import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class Mlevel3 extends StatefulWidget {
  const Mlevel3({super.key});

  @override
  State<Mlevel3> createState() => _Mlevel3State();
}

class _Mlevel3State extends State<Mlevel3> {
  @override
  List<Map<String, dynamic>> toughMutualFundQuestions = [
  {
    'question': 'Scenario: You have invested 10,000 rs in a mutual fund with an expense ratio of 1.5%. After one year, the fund has earned a total return of 8.5%. What is the net return on your investment?',
    'answers': [
      {'answerText': '7%', 'score': false},
      {'answerText': '6.5%', 'score': false},
      {'answerText': '6%', 'score': true},
      {'answerText': '8%', 'score': false},
    ],
  },
  {
    'question': 'Scenario: A mutual fund has an NAV of 25 rs. If you invest 5,000 rs, how many units of the fund will you receive?',
    'answers': [
      {'answerText': '200 units', 'score': true},
      {'answerText': '225 units', 'score': false},
      {'answerText': '180 units', 'score': false},
      {'answerText': '250 units', 'score': false},
    ],
  },
  {
    'question': 'What is the formula for calculating the Sharpe Ratio in mutual funds?',
    'answers': [
      {'answerText': 'Risk-free rate divided by standard deviation of the portfolio', 'score': false},
      {'answerText': 'Average return divided by standard deviation of the portfolio', 'score': false},
      {'answerText': '(Average return of the portfolio - Risk-free rate) divided by standard deviation of the portfolio', 'score': true},
      {'answerText': 'Risk-free rate divided by average return of the portfolio', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You invested 7,000 rs in Fund A, which has an annual return of 10%. At the same time, you invested 5,000 rs in Fund B, which has an annual return of 12%. What is the weighted average return on your investments?',
    'answers': [
      {'answerText': '11%', 'score': true},
      {'answerText': '11.5%', 'score': false},
      {'answerText': '10.5%', 'score': false},
      {'answerText': '12%', 'score': false},
    ],
  },
  {
    'question': 'In which type of mutual fund do investors aim to track the performance of a specific market index?',
    'answers': [
      {'answerText': 'Index fund', 'score': true},
      {'answerText': 'Hedge fund', 'score': false},
      {'answerText': 'Active fund', 'score': false},
      {'answerText': 'Sector-specific fund', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You have invested 15,000 rs in a mutual fund that has an annual expense ratio of 1.75%. After one year, the fund has earned a total return of 9.5%. What is the net return on your investment?',
    'answers': [
      {'answerText': '7.75%', 'score': false},
      {'answerText': '7%', 'score': true},
      {'answerText': '6.5%', 'score': false},
      {'answerText': '8%', 'score': false},
    ],
  },
  {
    'question': 'What is the main advantage of investing in a no-load mutual fund?',
    'answers': [
      {'answerText': 'No sales commission or fees are charged when buying or selling shares.', 'score': true},
      {'answerText': 'Higher returns compared to load funds.', 'score': false},
      {'answerText': 'Lower expense ratios.', 'score': false},
      {'answerText': 'Greater diversification in the fund\'s portfolio.', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You invested 10,000 rs in a mutual fund with an initial NAV of 15 rs. After one year, the NAV has increased to 18 rs. What is the value of your investment?',
    'answers': [
      {'answerText': '12,000 rs', 'score': false},
      {'answerText': '13,333.33 rs', 'score': false},
      {'answerText': '12,666.67 rs', 'score': true},
      {'answerText': '15,000 rs', 'score': false},
    ],
  },
  {
    'question': 'What is a redemption fee in a mutual fund?',
    'answers': [
      {'answerText': 'A fee charged when investors buy new shares.', 'score': false},
      {'answerText': 'A fee charged annually to cover marketing and distribution expenses.', 'score': false},
      {'answerText': 'A fee charged when investors sell their shares, typically to discourage short-term trading.', 'score': true},
      {'answerText': 'A fee charged when investors hold their shares for a specified period.', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You have invested 20,000 rs in a mutual fund. Over the next three years, the fund earns annual returns of 6%, 8%, and -2% respectively. What is the average annual return over the three-year period?',
    'answers': [
      {'answerText': '4%', 'score': false},
      {'answerText': '4.5%', 'score': false},
      {'answerText': '3.33%', 'score': true},
      {'answerText': '2%', 'score': false},
    ],
  },
];

  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        "Level 3",
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
                            'https://youtu.be/PXThRO04UwQ?feature=shared',
                        videoTitle: 'Debt Mutual Funds or Equity Mutual Funds',
                        videoDescription:
                            '''Debt Mutual Funds:

Debt mutual funds primarily invest in fixed-income instruments like government bonds, corporate bonds, and other debt securities. These funds are considered to be lower risk compared to equity funds. They offer stable and predictable returns, making them a preferred choice for investors seeking capital preservation and regular income. Debt funds are suitable for those with a lower risk tolerance or nearing retirement, as they provide a more stable investment option.

Equity Mutual Funds:

Equity mutual funds invest predominantly in stocks or shares of companies. They are known for potentially offering higher returns over the long term, but they come with a higher level of risk and volatility. These funds are ideal for investors with a higher risk appetite and a longer investment horizon. Equity funds are favored for wealth creation and beating inflation over time. They are suited for individuals who can withstand market fluctuations and are looking for long-term growth potential.

Choosing Between the Two:

Deciding between debt and equity funds depends on your individual financial goals, risk tolerance, and investment horizon. If you prioritize safety and regular income, debt funds might be the better choice. On the other hand, if you're seeking higher potential returns and are willing to weather market ups and downs, equity funds may be more suitable. Some investors also opt for a balanced approach, diversifying their portfolio with a mix of both debt and equity funds to strike a balance between risk and return. It's advisable to consult with a financial advisor to tailor your investment choices according to your specific circumstances and objectives.''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/PXThRO04UwQ/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLBQzfYou8ooKDxrMulBNyMV0F610w",
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
                              'Debt Mutual Funds or Equity Mutual Funds',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Basic Guide',
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
                            'https://www.youtube.com/watch?v=FLV2Jgy2Src&list=PLSiDKpku4U_X-9y3MEB8tgKEjXFPQu73w&index=7',
                        videoTitle: 'Mutual Funds SIP Investment vs Lump Sum',
                        videoDescription:
                            '''When it comes to investing in mutual funds, you have two primary options: SIP (Systematic Investment Plan) and Lump Sum investments.

SIP involves regularly investing a fixed amount of money, usually monthly. This approach offers a disciplined and gradual way to enter the market. It helps smooth out the impact of market volatility, as you buy more units when prices are low and fewer units when prices are high. SIPs are suitable for those who prefer a steady, long-term investment approach and are comfortable with a regular commitment.

On the other hand, Lump Sum investments involve putting a larger sum of money into a mutual fund all at once. This can be a sizeable amount, like an inheritance or a bonus. Lump Sum investments provide the potential for immediate gains if the market performs well, but they can also be riskier if invested just before a market downturn. This approach may be preferred by investors who have a thorough understanding of the market and are confident in their timing.

Deciding between SIP and Lump Sum depends on your individual financial situation, risk tolerance, and investment goals. Some investors choose to combine both strategies, using SIP for consistent contributions and Lump Sum investments for taking advantage of specific opportunities or windfalls. It's important to carefully consider your circumstances and possibly consult with a financial advisor to determine the most suitable approach for you.''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/FLV2Jgy2Src/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCBb1GlxPZvs5LyGr3VevM2cZ049A",
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
                              'Mutual Funds SIP Investment vs Lump Sum',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Active and Passive Funds: Episode-2 - Basics of Mutual Funds with Groww',
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
                            'https://www.youtube.com/watch?v=VeuMig2IKUw&list=PLSiDKpku4U_X-9y3MEB8tgKEjXFPQu73w&index=9',
                        videoTitle: 'ETF Investing – Nifty BeES & Exchange Traded Funds',
                        videoDescription:
                            '''ETF Investing - Nifty BeES & Exchange Traded Funds

Exchange Traded Funds (ETFs) have gained popularity as a smart way to invest in a wide range of assets. Nifty BeES, in particular, is an ETF that tracks the performance of the Nifty 50 index, which represents the top 50 companies on the National Stock Exchange (NSE) of India.

What sets ETFs apart is their structure. They are traded on stock exchanges just like individual stocks, making them easily accessible for investors. When you invest in Nifty BeES, you're essentially buying a basket of stocks that mirror the Nifty 50 index. This provides instant diversification across multiple sectors and industries.

Another advantage of ETFs, including Nifty BeES, is their low expense ratio. Since they passively track an index, they don't require active management by a fund manager. This results in lower fees compared to actively managed mutual funds.

Furthermore, ETFs offer flexibility in trading. They can be bought and sold throughout the trading day, allowing investors to react quickly to market movements. This contrasts with mutual funds, which are typically priced at the end of the trading day.

Moreover, ETFs like Nifty BeES provide transparency in their holdings. You can easily find information on which companies are included in the ETF and their respective weightage in the index. This transparency allows investors to make informed decisions based on the underlying assets.

It's worth noting that ETF investing also comes with its own set of considerations. While they offer diversification, they can still be subject to market volatility. Additionally, investors will need a demat account and a trading account to buy and sell ETFs.

In conclusion, Nifty BeES and other ETFs offer an accessible, cost-effective, and diversified way to invest in a particular index or asset class. They have become a valuable tool for both beginners and seasoned investors looking to build a well-balanced portfolio. However, like any investment, it's important to conduct thorough research and consider your individual financial goals and risk tolerance before diving in. Consulting a financial advisor can also provide valuable insights tailored to your specific circumstances.''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/VeuMig2IKUw/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLA4FT0428E3EPky2vtGHndcJZ9weA",
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
                              'ETF Investing – Nifty BeES & Exchange Traded Funds',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Basics of Mutual Funds: Episode #3 Types of Equity Funds',
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
                            'https://www.youtube.com/watch?v=Nrn3-G8IUSQ&list=PLSiDKpku4U_X-9y3MEB8tgKEjXFPQu73w&index=10',
                        videoTitle: 'ETF vs Index Funds vs Mutual Funds',
                        videoDescription:
                            '''ETFs, or Exchange-Traded Funds, are investment funds that trade on stock exchanges, similar to individual stocks. They aim to mirror the performance of a specific index, commodity, or a basket of assets. ETFs offer diversification like mutual funds but are known for their flexibility, as they can be bought and sold throughout the trading day at market prices.

Index Funds are a type of mutual fund designed to track the performance of a particular market index, such as the S&P 500. They aim to replicate the returns of the index they follow. Index funds are known for their passive management style, meaning they don't actively select investments; instead, they hold a similar composition to the index they track.

Mutual Funds, like index funds, pool money from multiple investors to invest in a diversified portfolio of stocks, bonds, or other securities. However, they can be actively managed, where a fund manager actively chooses and adjusts the investments to try and outperform the market. This can lead to potentially higher returns but may also come with higher fees compared to index funds or ETFs.

Each of these investment options has its own advantages and considerations. ETFs offer flexibility and typically have lower expense ratios, making them popular among traders. Index funds are favored for their simplicity and cost-effectiveness, often chosen by long-term investors. Mutual funds provide the potential for active management and potentially higher returns, but they can also carry higher costs. It's important to align your choice with your investment goals, risk tolerance, and investment strategy. Consulting with a financial advisor can also help in making the best decision for your specific situation.''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/Nrn3-G8IUSQ/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLADadKbk5D2bccZQK8UuLsWB5Aa0Q",
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
                              'ETF Investing – Nifty BeES & Exchange Traded Funds',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Basics of Mutual Funds',
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
                builder: (context) => Quiz(questions: toughMutualFundQuestions),
              ),
            );
          },
          child: Container(
            color: Color.fromRGBO(57, 37, 110, 0.80),
            height: 55,
            child: Align(
              alignment: Alignment.center,
              child: Text(' Take Quiz 3', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight:FontWeight.w700)),
            ),
          ),
        ),
            ],
          );
  }
}