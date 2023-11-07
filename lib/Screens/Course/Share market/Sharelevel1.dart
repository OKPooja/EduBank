import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class SLevel1 extends StatefulWidget {
  const SLevel1({super.key});

  @override
  State<SLevel1> createState() => _SLevel1State();
}

class _SLevel1State extends State<SLevel1> {
  @override
  final List<Map<String, dynamic>> basicStockMarketQuestions = [
  {
    'question': 'What is a stock?',
    'answers': [
      {'answerText': 'A share in the ownership of a company.', 'score': true},
      {'answerText': 'A type of government bond.', 'score': false},
      {'answerText': 'A physical certificate representing ownership in a company.', 'score': false},
      {'answerText': 'A type of mutual fund.', 'score': false},
    ],
  },
  {
    'question': 'What is the primary purpose of a stock exchange?',
    'answers': [
      {'answerText': 'To facilitate the buying and selling of stocks.', 'score': true},
      {'answerText': 'To provide loans to companies for expansion.', 'score': false},
      {'answerText': 'To regulate the stock market.', 'score': false},
      {'answerText': 'To issue new stocks to the public.', 'score': false},
    ],
  },
  {
    'question': 'What does IPO stand for?',
    'answers': [
      {'answerText': 'Initial Public Offering.', 'score': true},
      {'answerText': 'International Purchase Order.', 'score': false},
      {'answerText': 'Institutional Purchase Offer.', 'score': false},
      {'answerText': 'Investment Portfolio Option.', 'score': false},
    ],
  },
  {
    'question': 'What is a dividend?',
    'answers': [
      {'answerText': 'A portion of a company\'s profits paid to shareholders.', 'score': true},
      {'answerText': 'The price of a stock at a given moment.', 'score': false},
      {'answerText': 'The fee charged by a broker for buying stocks.', 'score': false},
      {'answerText': 'The interest earned on a government bond.', 'score': false},
    ],
  },
  {
    'question': 'What is the Dow Jones Industrial Average?',
    'answers': [
      {'answerText': 'A stock market index that measures the performance of 30 large companies listed on stock exchanges in the United States.', 'score': true},
      {'answerText': 'A measure of the average price of all stocks listed on a particular exchange.', 'score': false},
      {'answerText': 'A government agency regulating the stock market.', 'score': false},
      {'answerText': 'A financial newspaper reporting on market trends.', 'score': false},
    ],
  },
  {
    'question': 'What is a bull market?',
    'answers': [
      {'answerText': 'A market characterized by rising prices.', 'score': true},
      {'answerText': 'A market characterized by declining prices.', 'score': false},
      {'answerText': 'A market with no significant price changes.', 'score': false},
      {'answerText': 'A market with high volatility.', 'score': false},
    ],
  },
  {
    'question': 'What is a bear market?',
    'answers': [
      {'answerText': 'A market characterized by declining prices.', 'score': true},
      {'answerText': 'A market characterized by rising prices.', 'score': false},
      {'answerText': 'A market with no significant price changes.', 'score': false},
      {'answerText': 'A market with high volatility.', 'score': false},
    ],
  },
  {
    'question': 'What is a blue-chip stock?',
    'answers': [
      {'answerText': 'A stock of a well-established, financially sound company with a history of stable earnings.', 'score': true},
      {'answerText': 'A stock with a low market capitalization.', 'score': false},
      {'answerText': 'A stock of a newly established startup company.', 'score': false},
      {'answerText': 'A stock with high volatility.', 'score': false},
    ],
  },
  {
    'question': 'What is market capitalization?',
    'answers': [
      {'answerText': 'The total value of a company\'s outstanding shares of stock.', 'score': true},
      {'answerText': 'The price of a stock at a given moment.', 'score': false},
      {'answerText': 'The amount of money invested in a mutual fund.', 'score': false},
      {'answerText': 'The fee charged by a broker for buying stocks.', 'score': false},
    ],
  },
  {
    'question': 'What is a stock split?',
    'answers': [
      {'answerText': 'A corporate action that increases the number of a company\'s outstanding shares.', 'score': true},
      {'answerText': 'A decline in the value of a stock.', 'score': false},
      {'answerText': 'The division of a company into separate entities.', 'score': false},
      {'answerText': 'A merger of two or more companies.', 'score': false},
    ],
  },
];

  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        "Level 1",
        style: GoogleFonts.nunito(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YouTubePlayer(
                        videoUrl:
                            'https://youtu.be/67WwuPI-y5M?si=juvlm-HO4-v5tJDi',
                        videoTitle: 'Basics of stock market for beginners',
                        videoDescription: '''The stock market is like a giant marketplace where people buy and sell ownership in companies. These ownership shares are called "stocks" or "equities."

When you buy a stock, you become a partial owner of the company. You share in the company's profits and losses, and you may have the right to vote on certain company decisions.

Stock prices can go up or down based on various factors like the company's performance, economic conditions, and investor sentiment.

The stock market has two main segments: the primary market (where companies issue new stocks through initial public offerings or IPOs) and the secondary market (where previously issued stocks are bought and sold among investors).

To participate in the stock market, you'll need a brokerage account. This is like a financial account that allows you to buy and sell stocks online or through a broker.

Stocks are categorized into different types, such as common stocks (ordinary shares that come with voting rights) and preferred stocks (which may not have voting rights but offer certain advantages).

Stock market indices, like the S&P 500 or Dow Jones Industrial Average, represent the overall performance of a group of stocks. They're used to gauge how the market as a whole is doing.

Investing in stocks can offer the potential for long-term growth, but it also involves risk. Prices can be volatile, and you could lose money if stock values decrease.

Many investors use a "buy and hold" strategy, where they invest in stocks for the long term and don't frequently trade. Others engage in active trading to try to profit from short-term price fluctuations.''')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/67WwuPI-y5M/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCUuPsl-aQA2efHAdKR2ZpVem8K1w",
                    height: 90,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Basics of stock market for beginners',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Basics of stock market for beginners: What is share market & how stock market works',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YouTubePlayer(
                        videoUrl:
                            'https://youtu.be/p7HKvqRI_Bo?si=1PSlOZFgkqUblyD5',
                        videoTitle: 'How does the stock market work',
                        videoDescription: '''The stock market is like a giant marketplace where people buy and sell shares of companies. When a company wants to grow or raise money, it can decide to "go public" by selling shares of itself to the public through an initial public offering (IPO).

When you buy a share of a company's stock, you essentially become a small owner of that company. Your goal is to buy shares when you believe the company will do well in the future, and the stock's value will go up.

Stock prices can go up and down every day due to many factors, including company performance, economic news, and investor sentiment. The stock market is influenced by supply and demand, which means if more people want to buy a stock than sell it, the price goes up, and vice versa.

Investors can make money in the stock market by buying low and selling high. Some investors also earn income through dividends, which are periodic payments made by some companies to their shareholders. However, it's important to know that the stock market carries risks, and there's no guarantee of making money. It's a long-term game, and beginners should consider learning and starting with a diversified approach through mutual funds or exchange-traded funds (ETFs) to manage risk. Seeking advice from financial experts or doing thorough research is advisable for newcomers.''')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/p7HKvqRI_Bo/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAckmE3o4oEuUQxapjMqYN3-s7EsQ",
                    height: 90,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'How does the stock market work',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'How does the stock market work',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YouTubePlayer(
                        videoUrl: 'https://www.youtube.com/watch?v=fzp02ud0AHc&list=PLfEVwubAeLh9Ua43yskVcQMf2CWTQy3xr&index=9',
                        videoTitle: 'Stock Market Explained | Share Market | What is IPO ?',
                        videoDescription:
                            '''What is IPO?

Now, let's talk about IPOs. IPO stands for Initial Public Offering. It's like a company's big debut on the stock market. Before an IPO, a company is usually private, meaning it's owned by a smaller group of people, like the founders or some early investors. But when a company decides to go public, it means they want to invite more people to become part-owners.

How an IPO Works:

During an IPO, the company offers a certain number of its shares to the public for the first time. This is like the company saying, "Hey, we're opening our doors to new owners!" These shares are sold through the stock exchange, a place where people trade stocks.

Why Companies Go Public:

Companies do this for a few reasons. First, it helps them raise a lot of money. This money can be used to grow and expand the business. Second, it gives the original owners a way to cash in on their hard work. They can sell some of their shares and get a return for their efforts in building the company.

Buying Shares in an IPO:

If you want to be part of an IPO, you can buy shares through a broker. A broker is like a middleman who helps you buy and sell stocks. It's important to do some research before investing in an IPO, just like you would before buying anything valuable.

Risks and Rewards:

It's important to remember that investing in an IPO can be exciting, but it also comes with risks. The value of a company's stock can go up or down, and sometimes it's hard to predict. So, it's a good idea to be careful and maybe start with a small investment.

Final Thoughts:

To sum it up, the stock market is a place where people buy and sell ownership in companies. An IPO is when a company first opens up its ownership to the public. It can be a great way for companies to grow and for people to invest, but it's important to approach it with some knowledge and caution. It's like taking a step into the world of owning a piece of the business world!''')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/fzp02ud0AHc/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC6YA-gt1fT-oke4A-cDAMA5pQj0g",
                    height: 90,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Stock Market Explained | Share Market | What is IPO ?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Stock Market Explained | Share Market | What is IPO ? | Sensex | Nifty',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Quiz(questions: basicStockMarketQuestions),
              ),
            );
          },
          child: Container(
            color: Color.fromRGBO(57, 37, 110, 0.80),
            height: 55,
            child: Align(
              alignment: Alignment.center,
              child: Text(' Take Quiz 1', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight:FontWeight.w700)),
            ),
          ),
        ),
      ],
    );
  }
}
