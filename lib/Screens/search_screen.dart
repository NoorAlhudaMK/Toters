import 'package:flutter/material.dart';
import 'package:toters/Data/data.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black87,
              size: 28,
            ),
            hintText: "Search for store or item",
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/Delivery-amico.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order Anything !",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView(
                children: [
                  buildPost(flowers, "Happy Hour 😍", "Lorem ipsum", 28),
                  buildPost(flowers, "Weakly Discount 🕑", "Lorem ipsum", 26),
                  buildPost(flowers, "Cashback 💲", "Lorem ipsum", 10),
                  buildPost(flowers, "Happy Hour 😍", "Lorem ipsum", 28),
                  buildPost(flowers, "Happy Hour 🕑", "Lorem ipsum", 28),
                  buildPost(flowers, "Happy Hour 💲", "Lorem ipsum", 28),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildPost(String img, String title, String subTitle, int stores) {
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                )),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                          title,
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                    Text(
                      subTitle,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "$stores Stores",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

/*
var parser = EmojiParser();
var coffee = Emoji('coffee', '☕');
var heart  = Emoji('heart', '❤️');

// Get emoji info
var emojiHeart = parser.info('heart');
print(emojiHeart); '{name: heart, full: :heart:, code: ❤️}'

// Check emoji equality
heart == emojiHeart;  // returns: true
heart == emojiCoffee; // returns: false

// Get emoji by name or code
parser.get('coffee');   // returns: Emoji{name="coffee", full=":coffee:", code="☕"}
parser.get(':coffee:'); // returns: Emoji{name="coffee", full=":coffee:", code="☕"}

parser.hasName('coffee'); // returns: true
parser.getName('coffee'); // returns: Emoji{name="coffee", full=":coffee:", code="☕"}

parser.hasEmoji('❤️'); // returns: true
parser.getEmoji('❤️'); // returns: Emoji{name="heart", full=":heart:", code="❤️"}

parser.emojify('I :heart: :coffee:'); // returns: 'I ❤️ ☕'
parser.unemojify('I ❤️ ☕'); // returns: 'I :heart: :coffee:'
 */
