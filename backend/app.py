# app.py
from flask import Flask, jsonify, request, send_from_directory, render_template
import os
import psycopg2

app = Flask(__name__, template_folder='../frontend')

# ***REPLACE THESE WITH YOUR ACTUAL CREDENTIALS***
DB_HOST = "localhost"  # Or your database host
DB_NAME = "recipe_delivery"  # Your database name (e.g., "recipe_delivery")
DB_USER = "postgres"  # Your PostgreSQL username (e.g., "postgres")
DB_PASSWORD = "rishi"  # Your PostgreSQL password

def get_db_connection():
    conn = None
    try:
        conn = psycopg2.connect(host=DB_HOST, database=DB_NAME, user=DB_USER, password=DB_PASSWORD)
    except psycopg2.Error as e:
        print(f"Database connection error: {e}")
    return conn

@app.route('/recipes', methods=['GET'])
def get_recipes():
    conn = get_db_connection()
    if conn:
        try:
            cur = conn.cursor()
            cur.execute("SELECT * FROM recipes")
            recipes = cur.fetchall()
            cur.close()
            conn.close()

            recipe_list = []
            for recipe in recipes:
                recipe_dict = {
                    'id': recipe[0],
                    'name': recipe[1],
                    'description': recipe[2],
                    'instructions': recipe[3],
                    'image_url': recipe[4],
                    'prep_time': recipe[5],
                    'cook_time': recipe[6],
                    'servings': recipe[7],
                    'dietary_tags': recipe[8],
                    'cuisine': recipe[9],
                    'price': recipe[10],
                    'ingredients': recipe[11]  # Include ingredients
                }
                recipe_list.append(recipe_dict)

            return jsonify(recipe_list)

        except psycopg2.Error as e:
            print(f"Database query error: {e}")
            return jsonify({"error": "Database error"}), 500
    else:
        return jsonify({"error": "Database connection failed"}), 500

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/images/<filename>')
def get_image(filename):
    return send_from_directory('images', filename)

@app.route('/place-order', methods=['POST'])
def place_order():
    data = request.get_json()
    print('Order Details:', data)
    # Here, you can store the order data in your database or perform other actions
    return jsonify({'message': 'Order received successfully!'})

if __name__ == '__main__':
    app.run(debug=True)