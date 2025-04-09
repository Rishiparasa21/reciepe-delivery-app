--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-04-08 22:20:20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4906 (class 0 OID 16399)
-- Dependencies: 220
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ingredients (id, name, unit, supplier, price_per_unit) FROM stdin;
1	Chicken Breast	grams	Local Farm	10.00
\.


--
-- TOC entry 4907 (class 0 OID 16407)
-- Dependencies: 221
-- Data for Name: recipe_ingredients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipe_ingredients (recipe_id, ingredient_id, quantity) FROM stdin;
1	1	500
\.


--
-- TOC entry 4904 (class 0 OID 16390)
-- Dependencies: 218
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes (id, name, description, instructions, image_url, prep_time, cook_time, servings, dietary_tags, cuisine, price, ingredients) FROM stdin;
1	Chicken Tikka Masala	A classic Indian dish	### Ingredients\n- **For the Chicken Marinade:**\n  - 1½ lbs (700 grams) boneless chicken thighs or breasts, diced into 1-inch pieces\n  - ½ cup Greek yogurt (hung curd)\n  - 1 teaspoon garam masala\n  - ½ teaspoon cumin powder\n  - 1 teaspoon coriander powder\n  - ¼ teaspoon turmeric\n  - ½ to 1 teaspoon Kashmiri red chili powder (adjust for heat)\n  - ½ teaspoon salt\n  - 1 tablespoon lemon juice\n  - 1 tablespoon ginger-garlic paste\n  - 1 tablespoon mustard oil (or regular oil)\n- **For the Sauce:**\n  - 3 tablespoons oil or ghee\n  - 1½ cups finely chopped onions (about 2 medium onions)\n  - 1 green chili (optional)\n  - 1 tablespoon ginger-garlic paste\n  - 2 teaspoons garam masala\n  - 1 tablespoon coriander powder\n  - ½ to 1 teaspoon Kashmiri red chili powder (optional for heat)\n  - 500 grams tomatoes (pureed or canned equivalent)\n  - 1 cup hot water\n  - ½ cup heavy cream or cashew cream\n  - 1 tablespoon kasuri methi (dried fenugreek leaves)\n  - Salt and sugar to taste\n- **For Garnish:**\n  - Fresh cilantro leaves, chopped\n  - Additional cream for drizzling\n\n### Step-by-Step Instructions\n1. **Marinate the Chicken:**\n  - Combine chicken pieces with yogurt, spices (garam masala, cumin, coriander, turmeric, chili powder), salt, lemon juice, ginger-garlic paste, and oil in a large bowl.\n  - Mix well and cover with cling wrap. Marinate for at least 8 hours in the refrigerator (or overnight for deeper flavor).\n\n2. **Prepare the Grill or Pan:**\n  - **Option A: Grill**\n    - Preheat the oven to 460°F (240°C).\n    - Thread marinated chicken onto skewers.\n  - **Option B: Pan Fry**\n    - Heat a skillet with oil over medium-high heat.\n\n3. **Cook the Chicken:**\n  - **Option A: Grill**\n    - Grill chicken in the oven for about 9–10 minutes per side until slightly charred.\n  - **Option B: Pan Fry**\n    - Cook chicken pieces in batches for about 3 minutes per side until browned.\n  - Set aside the cooked chicken.\n\n4. **Prepare the Sauce:**\n  - Heat oil or ghee in a large skillet over medium heat.\n  - Add chopped onions and sauté until golden brown.\n  - Stir in ginger-garlic paste and cook for about a minute until fragrant.\n\n5. **Add Spices and Tomatoes:**\n  - Add garam masala, coriander powder, chili powder, and kasuri methi. Cook for another minute.\n  - Pour in pureed tomatoes and simmer for about 10–15 minutes until the sauce thickens.\n\n6. **Adjust Consistency:**\n  - Add hot water and stir well to adjust the consistency of the sauce.\n\n7. **Combine Chicken and Sauce:**\n  - Add the cooked chicken pieces to the sauce and simmer for another 5–7 minutes.\n\n8. **Add Cream:**\n  - Stir in heavy cream or cashew cream and cook for an additional few minutes until creamy.\n\n9. **Final Touches:**\n  - Taste and adjust seasoning with salt and sugar as needed.\n  - Garnish with fresh cilantro leaves and drizzle with cream.\n\n10. **Serve:**\n   - Serve hot with steamed basmati rice or jeera rice, and butter naan or roti.\n\nEnjoy your delicious homemade Chicken Tikka Masala!	/images/chicken.jpeg	30	60	4	{Gluten-Free}	Indian	15.99	Boneless chicken thighs or breasts, Greek yogurt, Garam masala, Cumin powder, Coriander powder, Turmeric, Kashmiri red chili powder, Salt, Lemon juice, Ginger-garlic paste, Mustard oil (or regular oil), Kasuri methi (dried fenugreek leaves), Oil or ghee, Onions, Green chili (optional), Tomatoes (pureed or canned), Hot water, Heavy cream or cashew cream, Fresh cilantro leaves, Sugar, Cayenne pepper (optional), Smoked paprika (optional), Cardamom powder (optional), Bay leaf (optional), Fish sauce or Worcestershire sauce (optional), Chicken stock or concentrate (optional), Coconut milk (optional)
3	Chicken Biryani	Chicken Biryani is a flavorful and aromatic dish made with marinated chicken, basmati rice, and a blend of spices. Perfect for special occasions or weekend dinners, it combines tender chicken with fragrant rice for a delicious meal.	1. **Prepare the Chicken Marinade:** - Mix yogurt, garlic paste, ginger paste, turmeric, chili powder, garam masala, lemon juice, and salt in a large bowl. \n  - Add chicken pieces and coat them thoroughly. Cover and marinate for at least 1 hour or overnight for best flavor.\n\n2. **Cook the Rice:** - Parboil basmati rice with water, salt, cloves, bay leaves, star anise, cinnamon stick, and cardamom pods. Cook for about 5 minutes until slightly firm and drain the rice.\n\n3. **Fry Onions:** - Heat oil or ghee in a pan. Add thinly sliced onions and fry until golden brown and crispy. Remove and set aside on paper towels to drain excess oil.\n\n4. **Prepare Saffron Water:** - Soak saffron strands in warm milk or water for 10 minutes to release the color and aroma.\n\n5. **Cook the Chicken:** - In the same pan used for frying onions, cook the marinated chicken until tender (about 10 minutes).\n\n6. **Layer the Biryani:** - In a large pot, layer half of the cooked rice at the bottom. Add half of the chicken and sprinkle fried onions, chopped mint, and cilantro on top. Repeat with remaining rice and chicken layers. Drizzle saffron water over the top layer.\n\n7. **Steam Cook:** - Cover the pot tightly and cook on low heat for 10–15 minutes to allow flavors to meld together.\n\n8. **Serve:** - Garnish with more cilantro and serve hot with raita or lime wedges.	images/chicken-biriyani.jpeg	30	60	7	{None}	Indian	22.50	Chicken thighs, yogurt, garlic paste, ginger paste, turmeric powder, chili powder, garam masala, lemon juice, salt, basmati rice, water, cloves, bay leaves, star anise, cinnamon stick, cardamom pods, vegetable oil or ghee, onions (thinly sliced), saffron strands, milk or water (for saffron), mint leaves (chopped), cilantro leaves (chopped)
\.


--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 219
-- Name: ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ingredients_id_seq', 1, true);


--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 217
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_id_seq', 3, true);


-- Completed on 2025-04-08 22:20:20

--
-- PostgreSQL database dump complete
--

