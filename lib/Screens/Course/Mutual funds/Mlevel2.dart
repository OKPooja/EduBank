import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class Mlevel2 extends StatefulWidget {
  const Mlevel2({super.key});

  @override
  State<Mlevel2> createState() => _Mlevel2State();
}

class _Mlevel2State extends State<Mlevel2> {
  @override

  List<Map<String, dynamic>> Mlevel2Q = [
  {
    'question': 'What is the difference between a load and a no-load mutual fund?',
    'answers': [
      {'answerText': 'A load fund charges a sales commission or fee, while a no-load fund does not.', 'score': true},
      {'answerText': 'A load fund provides higher returns, while a no-load fund is more stable.', 'score': false},
      {'answerText': 'A load fund has higher expense ratios, while a no-load fund has lower fees.', 'score': false},
      {'answerText': 'A load fund is riskier, while a no-load fund is more conservative.', 'score': false},
    ],
  },
  {
    'question': 'What is a capital gains distribution in a mutual fund?',
    'answers': [
      {'answerText': 'It is the profit earned by the fund manager.', 'score': false},
      {'answerText': 'It is the total amount of money invested in the fund.', 'score': false},
      {'answerText': 'It is the distribution of profits made from the sale of securities in the fund\'s portfolio.', 'score': true},
      {'answerText': 'It is the interest earned on the fund.', 'score': false},
    ],
  },
  {
    'question': 'What is the role of a custodian in a mutual fund?',
    'answers': [
      {'answerText': 'To manage the fund\'s investments and make buy/sell decisions.', 'score': false},
      {'answerText': 'To handle administrative tasks and hold the fund\'s assets in safekeeping.', 'score': true},
      {'answerText': 'To provide advice to investors on which funds to choose.', 'score': false},
      {'answerText': 'To market and promote the mutual fund.', 'score': false},
    ],
  },
  {
    'question': 'What is an expense ratio cap in a mutual fund?',
    'answers': [
      {'answerText': 'It is the maximum limit on investment.', 'score': false},
      {'answerText': 'It represents the cost of managing the fund, expressed as a percentage of the fund\'s average assets, but with an upper limit.', 'score': true},
      {'answerText': 'It is the total amount of money invested in the fund.', 'score': false},
      {'answerText': 'It is the dividend paid to the investors.', 'score': false},
    ],
  },
  {
    'question': 'What is a balanced fund in mutual funds?',
    'answers': [
      {'answerText': 'A fund that invests primarily in stocks.', 'score': false},
      {'answerText': 'A fund that invests primarily in fixed-income securities.', 'score': false},
      {'answerText': 'A fund that combines both stocks and bonds in its portfolio.', 'score': true},
      {'answerText': 'A fund that focuses on short-term investments.', 'score': false},
    ],
  },
  {
    'question': 'What is a sector-specific fund?',
    'answers': [
      {'answerText': 'A fund that invests in a specific industry or sector, such as technology or healthcare.', 'score': true},
      {'answerText': 'A fund that diversifies across multiple industries.', 'score': false},
      {'answerText': 'A fund that only invests in government securities.', 'score': false},
      {'answerText': 'A fund that focuses on international investments.', 'score': false},
    ],
  },
  {
    'question': 'What is the difference between growth and value funds?',
    'answers': [
      {'answerText': 'Growth funds aim for capital appreciation and invest in stocks with high growth potential, while value funds seek undervalued stocks with strong fundamentals.', 'score': true},
      {'answerText': 'Growth funds provide higher dividends, while value funds have higher volatility.', 'score': false},
      {'answerText': 'Growth funds have lower risk, while value funds have higher risk.', 'score': false},
      {'answerText': 'Growth funds invest primarily in fixed-income securities, while value funds focus on equities.', 'score': false},
    ],
  },
  {
    'question': 'What is a 12b-1 fee in a mutual fund?',
    'answers': [
      {'answerText': 'It is the minimum amount required to start investing.', 'score': false},
      {'answerText': 'It represents the cost of managing the fund, expressed as a percentage of the fund\'s average assets.', 'score': false},
      {'answerText': 'It is an annual fee charged by some funds to cover marketing and distribution expenses.', 'score': true},
      {'answerText': 'It is the interest earned on the fund.', 'score': false},
    ],
  },
  {
    'question': 'What is a prospectus in mutual funds?',
    'answers': [
      {'answerText': 'A document that provides detailed information about a mutual fund, including its investment objectives, risks, fees, and past performance.', 'score': true},
      {'answerText': 'A report on the fund\'s annual performance.', 'score': false},
      {'answerText': 'A statement of account sent to investors.', 'score': false},
      {'answerText': 'A legal agreement between the fund manager and the investor.', 'score': false},
    ],
  },
  {
    'question': 'What is a back-end load in a mutual fund?',
    'answers': [
      {'answerText': 'A fee charged when investors sell their shares, typically on a sliding scale that decreases over time.', 'score': true},
      {'answerText': 'A fee charged when investors buy new shares.', 'score': false},
      {'answerText': 'A fee charged annually to cover marketing and distribution expenses.', 'score': false},
      {'answerText': 'A fee charged when investors hold their shares for a specified period.', 'score': false},
    ],
  },
];

  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        "Level 2",
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
                            'https://youtu.be/i2OcUvUfFJM?si=maU8dDl0UPaw5TQU',
                        videoTitle: 'Basics of Mutual Funds Episode 1',
                        videoDescription:
                            '''1. Understanding Mutual Funds: With a moderate knowledge of mutual funds, you likely already know that they're investment vehicles that pool money from various investors to purchase a diversified portfolio of stocks, bonds, or other securities. This diversification helps spread risk and potentially increase returns.

2. Types of Mutual Funds: You might be familiar with the different categories of mutual funds, such as equity funds (which invest primarily in stocks), debt funds (which focus on bonds and fixed-income securities), and hybrid funds (which blend both stocks and bonds). Each type serves different investment objectives and risk profiles.

3. Risk and Returns: You understand that mutual funds come with varying levels of risk. Equity funds tend to have higher potential returns but also higher volatility. Debt funds are generally lower risk but offer more modest returns. Balanced or hybrid funds aim to strike a balance between risk and return.

4. Expense Ratios and Fees:You're aware that mutual funds charge fees for their management and operation. The expense ratio, which includes management fees, administrative costs, and other expenses, is an important factor to consider. Lower expense ratios are generally more favorable for investors.

5. Performance Evaluation: Given your moderate knowledge, you likely know how to assess a mutual fund's performance. You may look at factors like historical returns, consistency in performance, and how it compares to relevant benchmarks. This helps gauge how well the fund has performed over time.

6. Asset Allocation and Diversification: You understand the significance of asset allocation and diversification within a mutual fund portfolio. A well-diversified fund spreads investments across different asset classes and securities, which can help manage risk and potentially enhance overall returns.

Remember, even with moderate knowledge, it's always a good idea to consult with a financial advisor for personalized advice and to keep learning about the evolving landscape of mutual funds.''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/i2OcUvUfFJM/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCI0HJShXs9OTihw0kXLdzJYVDk-w",
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
                              'Basics of Mutual Funds Episode 1',
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
                            'https://www.youtube.com/watch?si=BkDmfsTnztfkwdRI&v=pMZSfei7qkM',
                        videoTitle: 'Active and Passive Funds: Episode-2 - Basics of Mutual Funds with Groww',
                        videoDescription:
                            '''Active Funds:

Active funds are like a team of skilled managers who actively make decisions about which investments to buy and sell within the fund. These managers aim to outperform a specific benchmark, like a stock market index. They conduct extensive research, analyze market trends, and use their expertise to select investments they believe will generate higher returns. Active funds are dynamic and constantly adjusting their holdings in pursuit of better performance. However, they come with higher management fees to cover the costs of this active management.

Passive Funds:

Passive funds, on the other hand, take a different approach. They aim to replicate the performance of a specific market index, like the S&P 500, rather than trying to beat it. Instead of relying on active decision-making, passive funds simply aim to match the movements of the index they track. This is done by holding the same or a similar mix of investments as the index. Because there's less active management involved, passive funds generally have lower fees compared to active funds. They offer a more hands-off approach to investing, often preferred by those seeking a simpler and cost-effective strategy.''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/pMZSfei7qkM/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDzrAS76EVT8drN-G1CBsBsE11sPQ",
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
                              'Active and Passive Funds: Episode-2',
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
              ),InkWell(
                onTap: () {
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YouTubePlayer(
                        videoUrl:
                            'https://www.youtube.com/watch?v=FxE4RvAh7L4',
                        videoTitle: 'Basics of Mutual Funds: Episode:3 Types of Equity Funds',
                        videoDescription:
                            '''Different types of equity funds:

Large-Cap Funds:
Large-cap equity funds primarily invest in well-established companies with large market capitalizations. These companies are typically leaders in their respective industries. Investors in large-cap funds seek stability and steady returns over the long term.

Mid-Cap Funds:
Mid-cap equity funds focus on companies with medium-sized market capitalizations. These companies are often in a phase of rapid growth and expansion. Investing in mid-cap funds offers a balance between potential for high returns and a slightly higher level of risk compared to large-cap funds.

Small-Cap Funds:
Small-cap equity funds invest in companies with small market capitalizations. These companies are often younger, with significant growth potential. While small-cap funds have the potential for substantial returns, they also come with higher volatility and risk due to the less-established nature of these companies.

Sectoral or Thematic Funds:
Sectoral or thematic equity funds concentrate on specific industries or themes, such as technology, healthcare, or renewable energy. They aim to capitalize on trends and opportunities within a particular sector. Investing in these funds allows for focused exposure to a specific area of the economy.

Multi-Cap Funds:
Multi-cap equity funds have the flexibility to invest across companies of various market capitalizations. This means they can hold a mix of large-cap, mid-cap, and small-cap stocks. This versatility allows fund managers to adapt to different market conditions and capitalize on opportunities across the spectrum.

Dividend Yield Funds:
Dividend yield equity funds focus on companies that pay high dividends relative to their stock price. These funds are favored by investors seeking regular income from their investments, making them popular among retirees or those looking for steady cash flows.

Value Funds:
Value equity funds target stocks that are believed to be undervalued by the market. Fund managers look for companies whose stock prices may not reflect their true worth, potentially offering opportunities for capital appreciation when the market corrects this undervaluation.

Growth Funds:
Growth equity funds concentrate on companies with strong potential for above-average growth in earnings and revenue. These funds often invest in companies at the early stages of their growth trajectory, aiming for substantial capital appreciation over time.''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/FxE4RvAh7L4/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC-VmR-i0uVAnjc0PHUcxhNulndcg",
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
                              'Basics of Mutual Funds',
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
                            'https://www.youtube.com/watch?v=1KMMqlSyiDE',
                        videoTitle: 'Large Cap, Mid Cap & Small Cap Stocks & Mutual Funds',
                        videoDescription:
                            '''Large Cap Stocks & Mutual Funds:

Large cap stocks refer to companies with a substantial market capitalization, meaning they have a high total value of outstanding shares. These are typically well-established, industry-leading companies with a proven track record of stability and performance. Investing in large cap stocks or mutual funds that focus on them is considered a relatively lower-risk strategy. They often provide more stability in turbulent market conditions, making them suitable for conservative investors or those nearing retirement.

Mid Cap Stocks & Mutual Funds:

Mid cap stocks belong to companies that have a medium market capitalization, falling between large caps and small caps. These companies are typically in a growth phase, with the potential for expansion and increased market share. Mid cap stocks can offer a balance between growth potential and stability, making them an attractive option for investors seeking a moderate level of risk. Mutual funds specializing in mid cap stocks aim to capture the growth potential of these companies while maintaining a reasonable level of risk.

Small Cap Stocks & Mutual Funds:

Small cap stocks represent companies with a relatively low market capitalization, indicating they are smaller, newer, or less established compared to their larger counterparts. These companies often have significant growth potential, but they also come with higher volatility and risk. Investing in small cap stocks or mutual funds focused on them can be more aggressive and potentially yield higher returns, but it also carries a higher degree of uncertainty. They are suitable for investors with a longer investment horizon and a higher risk tolerance, looking for substantial growth opportunities.''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/1KMMqlSyiDE/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLD4PS-JEkXT1xv7phdc6EgO55DyVg",
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
                              'Large Cap, Mid Cap & Small Cap Stocks & Mutual Funds',
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
                builder: (context) => Quiz(questions: Mlevel2Q),
              ),
            );
          },
          child: Container(
            color: Color.fromRGBO(57, 37, 110, 0.80),
            height: 55,
            child: Align(
              alignment: Alignment.center,
              child: Text(' Take Quiz 2', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight:FontWeight.w700)),
            ),
          ),
        ),
            ],
          );
  }
}