import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class SLevel3 extends StatefulWidget {
  const SLevel3({super.key});

  @override
  State<SLevel3> createState() => _SLevel3State();
}

class _SLevel3State extends State<SLevel3> {
  @override
  List<Map<String, dynamic>> toughStockMarketQuestions = [
    {
      'question':
          'Scenario: You bought 100 shares of XYZ Corp at 50 rs per share. After a year, the stock pays a dividend of 2 rs per share. Calculate your dividend yield.',
      'answers': [
        {'answerText': '4%', 'score': true},
        {'answerText': '3%', 'score': false},
        {'answerText': '5%', 'score': false},
        {'answerText': '2%', 'score': false},
      ],
    },
    {
      'question':
          'Scenario: You invested 15,000 rs in a stock. Over the next three years, the stock earns annual returns of 6%, 8%, and -2% respectively. What is the total value of your investment after three years?',
      'answers': [
        {'answerText': '18,874.40 rs', 'score': false},
        {'answerText': '19,301.44 rs', 'score': true},
        {'answerText': '18,220.50 rs', 'score': false},
        {'answerText': '17,925.60 rs', 'score': false},
      ],
    },
    {
      'question':
          'What is the formula for calculating the Price-to-Earnings (P/E) ratio of a stock?',
      'answers': [
        {'answerText': 'Price per Share / Earnings per Share', 'score': true},
        {'answerText': 'Earnings per Share / Price per Share', 'score': false},
        {'answerText': 'Dividends per Share / Price per Share', 'score': false},
        {'answerText': 'Price per Share / Dividends per Share', 'score': false},
      ],
    },
    {
      'question':
          'Scenario: You have invested 10,000 rs in a stock. After one year, the stock is valued at 12,000 rs. What is your percentage return on investment?',
      'answers': [
        {'answerText': '20%', 'score': false},
        {'answerText': '15%', 'score': true},
        {'answerText': '25%', 'score': false},
        {'answerText': '10%', 'score': false},
      ],
    },
    {
      'question':
          'What is the formula for calculating the Compound Annual Growth Rate (CAGR) of an investment?',
      'answers': [
        {
          'answerText': '[(Ending Value / Beginning Value) ^ (1/n)] - 1',
          'score': true
        },
        {
          'answerText':
              '[(Ending Value - Beginning Value) / Beginning Value] * 100',
          'score': false
        },
        {
          'answerText': '[(Ending Value / Beginning Value) * 100] - 100',
          'score': false
        },
        {
          'answerText': '[(Ending Value - Beginning Value) ^ (1/n)] * 100',
          'score': false
        },
      ],
    },
    {
      'question':
          'Scenario: You bought 500 shares of a stock at 30 rs per share. After three years, the stock has appreciated to 40 rs per share. What is your total gain from this investment?',
      'answers': [
        {'answerText': '5,000 rs', 'score': false},
        {'answerText': '7,500 rs', 'score': false},
        {'answerText': '10,000 rs', 'score': true},
        {'answerText': '12,500 rs', 'score': false},
      ],
    },
    {
      'question':
          'What is the purpose of using a moving average in technical analysis of stocks?',
      'answers': [
        {
          'answerText':
              'To smooth out short-term price fluctuations and identify trends over a period of time.',
          'score': true
        },
        {
          'answerText':
              'To predict future stock prices based on historical data.',
          'score': false
        },
        {
          'answerText':
              'To compare the performance of different stocks in the same industry.',
          'score': false
        },
        {
          'answerText':
              'To estimate the total market capitalization of a stock exchange.',
          'score': false
        },
      ],
    },
    {
      'question':
          'Scenario: You bought 200 shares of a stock at 25 rs per share. The stock pays an annual dividend of 2 rs per share. After two years, the stock price has risen to 30 rs per share. What is your total return on investment (including dividends) after two years?',
      'answers': [
        {'answerText': '1,200 rs', 'score': true},
        {'answerText': '800 rs', 'score': false},
        {'answerText': '1,000 rs', 'score': false},
        {'answerText': '1,400 rs', 'score': false},
      ],
    },
    {
      'question':
          'What is the formula for calculating the Earnings per Share (EPS) of a company?',
      'answers': [
        {'answerText': 'Net Income / Total Outstanding Shares', 'score': true},
        {
          'answerText': 'Total Revenue / Total Outstanding Shares',
          'score': false
        },
        {
          'answerText': 'Dividends Paid / Total Outstanding Shares',
          'score': false
        },
        {
          'answerText': 'Total Assets / Total Outstanding Shares',
          'score': false
        },
      ],
    },
    {
      'question':
          'Scenario: You have invested 12,000 rs in a stock. After three years, the stock is valued at 10,000 rs. In addition, you received 600 rs in dividends over the three-year period. What is your total return on investment?',
      'answers': [
        {'answerText': '-8%', 'score': true},
        {'answerText': '5%', 'score': false},
        {'answerText': '10%', 'score': false},
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
                        videoUrl: 'https://www.youtube.com/watch?v=dIxRYvFUlOM',
                        videoTitle: 'Option Trading | What is Option trading?',
                        videoDescription:
                            '''Option trading is a type of investment strategy that involves the buying and selling of financial contracts known as options. An option gives the holder the right, but not the obligation, to buy or sell a specific asset, like a stock, at a predetermined price (known as the strike price) within a specified time frame. This allows investors to make bets on the price movements of assets without actually owning them.

Call options and put options are the two main types of options. A call option gives the holder the right to buy an asset, while a put option grants the right to sell it. Call options are typically used when an investor expects the price of the underlying asset to rise, while put options are employed when they anticipate a price decline.

Option trading offers a range of strategies that can be tailored to different market conditions and risk tolerances. For example, buying call options is a bullish strategy, as it profits from an expected rise in the asset's price. Conversely, buying put options is a bearish strategy, anticipating a fall in price.

Moreover, option trading allows for more advanced strategies like spreads and straddles. A spread involves simultaneously buying and selling options of the same type (either calls or puts) but with different strike prices or expiration dates. This strategy can help manage risk and potentially increase returns. A straddle entails buying both a call and a put option with the same strike price and expiration date, allowing the investor to profit from significant price movements in either direction.

However, it's important to note that option trading is inherently more complex and riskier than traditional stock trading. Options have expiration dates, which means they can lose value rapidly as they approach their expiration. This makes timing critical, and it's vital for investors to have a solid understanding of the market and the specific risks associated with options before engaging in this type of trading. Additionally, seeking advice from a knowledgeable financial advisor or engaging in thorough research is strongly recommended for those new to option trading.''')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/dIxRYvFUlOM/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDl5NLbO85QyFiRmsOuTqfPJSW69w",
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
                        'Option Trading | What is Option trading?',
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
                            'https://www.youtube.com/watch?v=koFl23q5oCU&list=PLfEVwubAeLh9Ua43yskVcQMf2CWTQy3xr&index=14',
                        videoTitle: 'Intraday Vs Long Term Investment',
                        videoDescription: '''Intraday Trading:

Intraday trading is a type of investment strategy where traders buy and sell financial instruments within the same trading day. It's a fast-paced approach, often involving high trading volumes and quick decision-making. The goal is to capitalize on short-term price movements, aiming to profit from small price fluctuations. Intraday traders often use technical analysis, looking at charts and patterns, to make their trading decisions. However, it's worth noting that intraday trading can be quite risky and demands a good understanding of market dynamics.

Long-Term Investment:

Long-term investment, in contrast, is a strategy focused on holding assets for an extended period, often spanning several years or even decades. This approach is more about buying and holding, rather than frequent buying and selling. Long-term investors typically have confidence in the underlying fundamentals of their chosen investments, such as a company's financial health or the potential growth of a particular industry. They are less concerned with short-term market volatility and more focused on the overall growth potential over time.

Risk and Return:

Intraday trading is known for its high-risk, high-reward nature. The potential for quick profits can be enticing, but it comes with a substantial level of risk due to the volatility of short-term price movements. Long-term investing, on the other hand, is generally considered to be less risky. While there may be market fluctuations over the short term, long-term investors believe in the potential for their investments to grow steadily over time, benefiting from the overall upward trajectory of markets.

Time Commitment:

Intraday trading demands a significant time commitment. Traders need to closely monitor the markets throughout the trading day, reacting swiftly to changing conditions. This can be demanding and may not suit individuals with other professional or personal commitments. Long-term investing, on the other hand, requires less active management. Investors have the flexibility to check their investments periodically and make adjustments as needed, but it doesn't demand constant attention.

Emotional Considerations:

Intraday trading can be emotionally intense, as traders often experience rapid fluctuations in the value of their positions. This can lead to stress and impulsive decision-making. Long-term investing, with its focus on the big picture and longer time horizon, tends to be less emotionally charged. It allows investors to ride out market volatility with the confidence that, historically, markets have shown an upward trend over the long run.''')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/koFl23q5oCU/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLApWSZTfYctiLxsR7ckYJOwQwPcWA",
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
                        'Intraday Vs Long Term Investment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Intraday Vs Long Term Investment',
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
                            'https://www.youtube.com/watch?v=lMlWvwWuSYk&list=PLfEVwubAeLh9Ua43yskVcQMf2CWTQy3xr&index=15',
                        videoTitle: 'Advance Price Action Trading Strategies',
                        videoDescription:
                            '''Here are some advanced price action trading strategies explained in small paragraphs:

1. Candlestick Patterns for Reversals: Advanced traders often utilize candlestick patterns to identify potential trend reversals. Patterns like the "Double Top" and "Double Bottom" signify a shift in market sentiment. Traders look for specific formations and combine them with other indicators to confirm potential reversals.

2. Support and Resistance Zones: Rather than just focusing on specific price levels, advanced traders analyze support and resistance zones. These are areas where price has historically shown significant buying or selling interest. By identifying zones, traders can anticipate potential price reactions and plan their entries and exits accordingly.

3. Fibonacci Retracement and Extension Levels: Fibonacci levels are powerful tools for identifying potential areas of support and resistance based on mathematical ratios derived from the Fibonacci sequence. Advanced traders use these levels to pinpoint potential entry and exit points, as well as to set profit targets.

4. Trading with Trend Channels: Advanced price action traders often draw trend channels to visualize the direction of the prevailing trend. By connecting the highs and lows of an uptrend or downtrend, traders can identify potential areas for entries, exits, and trend continuation points.

5. Volume Analysis in Conjunction with Price Action: Advanced traders understand the importance of combining price action with volume analysis. A surge in trading volume during a price move can provide additional confirmation of a strong trend or a potential reversal. This combination helps traders make more informed decisions.

6. Engulfing Patterns and Inside Bars: Engulfing patterns and inside bars are key candlestick formations that advanced traders closely watch. An engulfing pattern occurs when one candle "engulfs" the previous one, signifying a potential reversal. Inside bars represent a period of consolidation and can lead to significant price moves once they break out.

7. Divergence Analysis: Advanced traders employ divergence analysis to identify potential shifts in momentum. This involves comparing price action with oscillators like the Relative Strength Index (RSI) or the Moving Average Convergence Divergence (MACD). Divergences can signal the potential end of a trend or the beginning of a new one.''')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/lMlWvwWuSYk/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLD9o7LrkC8u4f35RPgOO7SvI1HGSg",
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
                        'Advance Price Action Trading Strategies',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Advance Price Action Trading Strategies',
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
                        videoUrl: 'https://youtu.be/vlpO_SNW2SI?feature=shared',
                        videoTitle: 'Price Action',
                        videoDescription: 'Blog')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/vlpO_SNW2SI/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDnJ6TBP7-qJain6H8qBz_MlLAa9A",
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
                        'Price Action ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Price Action ',
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
                builder: (context) =>
                    Quiz(questions: toughStockMarketQuestions),
              ),
            );
          },
          child: Container(
            color: Color.fromRGBO(57, 37, 110, 0.80),
            height: 55,
            child: Align(
              alignment: Alignment.center,
              child: Text(' Take Quiz 3',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700)),
            ),
          ),
        ),
      ],
    );
  }
}
