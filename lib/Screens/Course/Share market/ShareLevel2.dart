import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class SLevel2 extends StatefulWidget {
  const SLevel2({super.key});

  @override
  State<SLevel2> createState() => _SLevel2State();
}

class _SLevel2State extends State<SLevel2> {
  @override

  List<Map<String, dynamic>> SLevel2Q = [
  {
    'question': 'What is a P/E ratio in the context of stocks?',
    'answers': [
      {'answerText': 'Price-to-Earnings ratio - It measures the valuation of a company by dividing its share price by earnings per share.', 'score': true},
      {'answerText': 'Percentage of Earnings ratio - It indicates the portion of profits distributed to shareholders.', 'score': false},
      {'answerText': 'Profit and Equity ratio - It shows the relationship between company profits and shareholder equity.', 'score': false},
      {'answerText': 'Price-to-Expense ratio - It compares the price of a stock to its operating expenses.', 'score': false},
    ],
  },
  {
    'question': 'What is a dividend yield?',
    'answers': [
      {'answerText': 'The annual dividend income earned per share, expressed as a percentage of the stock\'s current market price.', 'score': true},
      {'answerText': 'The increase in a stock\'s price over a given period of time.', 'score': false},
      {'answerText': 'The total value of all dividends paid out by a company in a year.', 'score': false},
      {'answerText': 'The percentage of profits reinvested by a company.', 'score': false},
    ],
  },
  {
    'question': 'What does the term "market volatility" refer to?',
    'answers': [
      {'answerText': 'The degree of variation in trading price series over a certain period of time.', 'score': true},
      {'answerText': 'The rate at which stocks are bought and sold in the market.', 'score': false},
      {'answerText': 'The level of government intervention in the stock market.', 'score': false},
      {'answerText': 'The percentage of investors holding a particular stock.', 'score': false},
    ],
  },
  {
    'question': 'What is a stock exchange index?',
    'answers': [
      {'answerText': 'A measurement of the performance of a specific group of stocks in a stock market.', 'score': true},
      {'answerText': 'The average price of all stocks listed on a particular exchange.', 'score': false},
      {'answerText': 'A list of companies that are about to go public.', 'score': false},
      {'answerText': 'An index used to calculate taxes on stock market transactions.', 'score': false},
    ],
  },
  {
    'question': 'What is the purpose of a stop-loss order in stock trading?',
    'answers': [
      {'answerText': 'To limit potential losses by automatically selling a stock if its price falls to a certain level.', 'score': true},
      {'answerText': 'To buy a stock when its price is at its lowest point.', 'score': false},
      {'answerText': 'To prevent unauthorized access to a trading account.', 'score': false},
      {'answerText': 'To initiate a short selling strategy.', 'score': false},
    ],
  },
  {
    'question': 'What is a blue-sky law in the context of securities?',
    'answers': [
      {'answerText': 'State regulations designed to protect investors from securities fraud.', 'score': true},
      {'answerText': 'Federal regulations governing the issuance and trading of stocks.', 'score': false},
      {'answerText': 'A law prohibiting speculative trading in certain industries.', 'score': false},
      {'answerText': 'A legal framework for managing corporate mergers and acquisitions.', 'score': false},
    ],
  },
  {
    'question': 'What is insider trading?',
    'answers': [
      {'answerText': 'Buying or selling a security in breach of a fiduciary duty or other relationship of trust and confidence, while in possession of material, nonpublic information about the security.', 'score': true},
      {'answerText': 'Trading of stocks by high-level executives of a company.', 'score': false},
      {'answerText': 'Trading stocks based on public information available to all investors.', 'score': false},
      {'answerText': 'Investing in stocks of companies with low market capitalization.', 'score': false},
    ],
  },
  {
    'question': 'What does the term "blue-collar investor" refer to?',
    'answers': [
      {'answerText': 'An individual who works in a manual or industrial job and invests in the stock market.', 'score': true},
      {'answerText': 'An investor who specializes in trading blue-chip stocks.', 'score': false},
      {'answerText': 'A person who invests in real estate rather than stocks.', 'score': false},
      {'answerText': 'An investor with limited knowledge of the stock market.', 'score': false},
    ],
  },
  {
    'question': 'What is a mutual fund in the context of stock market investing?',
    'answers': [
      {'answerText': 'A professionally managed investment fund that pools money from many investors to purchase securities.', 'score': true},
      {'answerText': 'A fund that invests exclusively in government bonds.', 'score': false},
      {'answerText': 'A fund that focuses on short-term trading of stocks.', 'score': false},
      {'answerText': 'A fund that invests primarily in real estate properties.', 'score': false},
    ],
  },
  {
    'question': 'What is a stock option?',
    'answers': [
      {'answerText': 'A contract that gives the holder the right to buy or sell a specific quantity of a stock at a particular price.', 'score': true},
      {'answerText': 'A type of preferred stock issued by a company.', 'score': false},
      {'answerText': 'A government-issued bond that can be converted into shares of stock.', 'score': false},
      {'answerText': 'A type of mutual fund that focuses on technology stocks.', 'score': false},
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
                            'https://youtu.be/iasvhMVhoSM?feature=shared',
                        videoTitle: 'What is Demat Account | How to choose a broker',
                        videoDescription:
                            '''A Demat account, short for Dematerialized account, is like a digital locker for your investments. It holds shares, bonds, and other securities in electronic form, eliminating the need for physical certificates. This makes buying, selling, and managing investments much more convenient and secure.

Choosing the right broker is crucial. Start by considering reputation and reliability. Opt for a well-established broker with a good track record in the market. Next, assess the range of services they offer. Look for a broker that provides a user-friendly trading platform, research tools, and customer support that align with your needs.

Fees and charges are a critical factor. Different brokers have varying fee structures. Take note of brokerage fees, annual maintenance charges for the Demat account, and any additional fees for services like advisory or research reports. It's important to choose a broker with transparent and competitive pricing.

Consider the range of investments the broker offers access to. If you're interested in trading specific stocks, bonds, or derivatives, make sure the broker provides access to those markets. Additionally, some brokers may offer additional services like mutual funds, IPOs, or commodity trading.

Accessibility and ease of use are key. Look for a broker with a user-friendly trading platform that suits your preferences. It should offer features like real-time quotes, technical analysis tools, and a smooth interface for executing trades. Mobile apps for trading on-the-go can also be a significant advantage.

Customer support matters. A responsive and reliable customer support team can be invaluable, especially in case of technical issues or when you need assistance with transactions. Consider the availability of support channels such as phone, email, and chat, and the reputation of the broker in addressing customer queries.''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/iasvhMVhoSM/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDa9vimaXCjlnMf8wyxmxfjb_obxQ",
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
                              'What is Demat Account | How to choose a broker',
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
                            'https://www.youtube.com/watch?v=03s4PhapyUs&list=PLfEVwubAeLh9Ua43yskVcQMf2CWTQy3xr&index=11',
                        videoTitle: 'Types of stocks',
                        videoDescription:
                            '''There are several types of stocks you can invest in.

1. Common Stocks: Common stocks are the most common type of stock that people invest in. When you buy common stocks, you become a shareholder in the company. You have the potential to earn dividends, and you can vote on certain company decisions at shareholder meetings.

2. Preferred Stocks: Preferred stocks are a bit different from common stocks. They typically don't come with voting rights, but they do offer a higher claim on the company's assets and earnings. They are often preferred by income-focused investors because they usually pay fixed dividends.

3. Blue-Chip Stocks: Blue-chip stocks are shares of well-established, large, and financially stable companies. They are known for their reliability and tend to weather market downturns better than smaller companies' stocks.

4. Small-Cap, Mid-Cap, and Large-Cap Stocks: Stocks are often categorized by market capitalization. Small-cap stocks belong to smaller companies, mid-cap stocks belong to medium-sized firms, and large-cap stocks belong to large corporations. Each has its own risk and growth potential.

5. Growth Stocks: These stocks belong to companies that are expected to grow at an above-average rate compared to other companies in the market. They typically reinvest their earnings into the business rather than paying dividends.

6. Value Stocks: Value stocks are considered undervalued by the market. They are often from established companies that may be temporarily out of favor. Investors buy them with the hope that their true value will be recognized, leading to price appreciation.

7. Dividend Stocks: These stocks belong to companies that regularly pay dividends to their shareholders. They are favored by income-seeking investors who rely on the steady income from these payouts.

8. Cyclical Stocks: These stocks are closely tied to the economic cycle. They perform well during periods of economic growth but may struggle during economic downturns. Examples include companies in the automotive or construction sectors.

9. Defensive Stocks: Defensive stocks belong to companies that provide essential products or services that people continue to use even during economic downturns. Examples include utilities and healthcare companies.

10. Tech Stocks: These stocks belong to companies in the technology sector. They are known for their innovation and can offer high growth potential but also come with higher volatility''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/03s4PhapyUs/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBcdBWAqHBqZG9lv0TdQWyZtc5o0A",
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
                              'Types of stocks',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'bassss',
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
                            'https://youtu.be/UVCjBtMwg8g?feature=shared',
                        videoTitle: 'How to buy your first stock in India',
                        videoDescription:
                            '''Step-by-Step Process to Open an Account to Buy and Sell Stocks
Step one: Approach a SEBI-registered member, or broker, of a stock exchange

In order to buy and sell shares of a company, you will need a demat and a trading account. For this, you will have to approach a broker, or a sub broker, registered with SEBI. The regulator issues them a registration number that begins with the letters “INB” (broker), “INS” (sub-broker), or “INF” (broker), which are essential to verify their authenticity.

Broker’s registration number is usually found on their official website, and you may verify it by checking it on SEBI’s website. Once you’ve selected your preferred broker, you may choose to open a demat and trading accounts either online or visit the bank’s branches offering demat services. 

Step two: Open a demat account
The broker, or sub-broker, with whom you sign a “Member Client Agreement”, to execute trades on your behalf, will help you open a demat account. A demat account stores your shares, or securities, in a dematerialized form, or in an electronic form. 

When you buy and sell shares and other securities, the transactions are reflected in your digital demat account. A demat account is opened in the name of an investor for the purpose of holding and transferring shares.

Following documents are required to open a demat/trading account:

Two to three passport-size photographs.
Proof of identity: PAN card, Aadhaar card, passport, voter ID card, driving license, etc.
Proof of address: Ration card, passport, voter ID card, driving license, bank passbook, electricity bill, etc.
Proof of bank account: Name of the bank, account number, or a canceled cheque.
Note: Demat accounts are of two types, namely repatriable and non-repatriable demat accounts. A repatriable demat account allows traders to take funds abroad, whereas funds cannot be repatriated in a non-repatriable demat account. 

Step three: Open a trading account
A trading account acts as a bridge between your demat and bank account. A trading account is simultaneously created while opening a demat account, and the KYC is done with the same documents submitted earlier. Once the trading account is created, you can buy and sell shares of a company. 

For example, when you buy a certain number of shares of a company, you fund your trading account to initiate the transaction. The shares you purchase are then stored in your demat account. 

Similarly, when you sell a certain number of shares you own, the amount is credited to the trading account. If you wish, you can then transfer the amount from your trading account to the bank account.

''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/UVCjBtMwg8g/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBC5DGj47E8o3LPkxwdXgk3bF0icg",
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
                              'How to buy your first stock in India',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'How to buy your first stock in India',
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
                            'https://www.youtube.com/watch?v=xsAO_c_5sXk',
                        videoTitle: 'Your 1st Step in Stock Market',
                        videoDescription:
                            '''Entering the world of the stock market can be both exciting and potentially rewarding. The first step is to build a foundation of knowledge. Begin by understanding the basic concepts of stocks, which represent ownership in a company. It's crucial to grasp how the stock market functions as a platform where these shares are bought and sold.

Next, familiarize yourself with different investment strategies. Are you looking for long-term growth, income through dividends, or perhaps a blend of both? Each strategy involves different types of stocks and approaches to investing. Assess your own financial goals and risk tolerance to determine the most suitable path for you.

Once you've gained some knowledge, consider opening a brokerage account. This is like a gateway to the stock market, allowing you to buy and sell stocks. Take the time to research and select a reputable and user-friendly brokerage platform. Consider factors like trading fees, ease of use, and available research tools.

Diversification is a crucial principle in stock market investing. Instead of putting all your funds into a single company's stock, consider spreading your investments across various industries and sectors. This helps mitigate risk, as the performance of different sectors may not always move in sync.

Before making your first investment, conduct thorough research on the companies you're interested in. Study their financial reports, understand their business model, and assess factors that might affect their future performance. Keep an eye on market trends, news, and industry developments.

When you're ready to make your first purchase, consider starting with a well-established, financially stable company. These are typically referred to as "blue-chip" stocks. They are known for their reliability and have a track record of steady performance.

Remember, investing in stocks carries inherent risks, and it's possible to lose money. It's important to start with an amount you're comfortable with, and avoid investing funds you might need in the short term. Additionally, consider setting realistic expectations for returns, as the stock market can be subject to fluctuations.

Lastly, stay informed and be patient. The stock market can be unpredictable in the short term, but historically, it tends to grow over the long run. Keep learning, stay updated on market trends, and be prepared to adjust your strategy as needed to align with your evolving financial goals.''')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/xsAO_c_5sXk/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDqTsgaIRNY5aa-TaxW8DBaVmo8Mg",
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
                              'Your 1st Step in Stock Market',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Your 1st Step in Stock Market',
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
                builder: (context) => Quiz(questions: SLevel2Q),
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