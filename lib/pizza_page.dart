import 'package:flutter/material.dart';

class PizzaPage extends StatefulWidget {
  const PizzaPage({super.key});

  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.red,
                ),
              ),
              title: const Text('Предложения', style: AppTextStyle.style1),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close_outlined,
                      color: Colors.red,
                    ))
              ],
            ),
            SliverList.list(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Пицца',
                        style: AppTextStyle.style4,
                      ),
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Другие')),
                  ],
                ),
              ],
            ),
            SliverList.separated(
              itemBuilder: ((context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/pizza.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            
                            Text(
                              'Caprese Salad',
                              style: AppTextStyle.style2,
                            ),
                            
                            Text('Best Options',
                              style: AppTextStyle.style3,
                            ),
                            TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.star, color: Colors.red,),
                    label: const Text('4.9',style: AppTextStyle.style5,),
                    
                  ),
                           
                            
                          ],
                        ),
                      ElevatedButton.icon(onPressed:
                       (){}, 
                       icon: Icon(Icons.attach_money_outlined, color: Colors.white,), label: Text('7.3',style: AppTextStyle.style4),
                         style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    ),
                      ],
                    ),
                  ],
                );
              }),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: 5,
            )
          ],
        ),
      ),
    );
  }
}

class AppTextStyle {
  static const style1 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.red);
  static const style2 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w300,
      color: Color.fromARGB(255, 22, 20, 20));
  static const style3 = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w300, color: Colors.orange);
  static const style4 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white);
  static const style5 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.red);
  static const style6 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: Colors.red);
  static const style7 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.grey);
  static const style8 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: Color.fromARGB(255, 30, 29, 29));
}
