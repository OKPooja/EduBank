import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class Mlevel1 extends StatefulWidget {
  const Mlevel1({super.key});

  @override
  State<Mlevel1> createState() => _Mlevel1State();
}

class _Mlevel1State extends State<Mlevel1> {
  @override
  final List<Map<String, dynamic>> MutualFundQuestions = [
    {
      'question': 'What is a mutual fund?',
      'answers': [
        {'answerText': 'A government savings scheme.', 'score': false},
        {
          'answerText':
              'A type of investment where money is pooled from various investors to invest in stocks, bonds, or other securities.',
          'score': true
        },
        {
          'answerText': 'A bank account with high-interest rates.',
          'score': false
        },
        {'answerText': 'A type of insurance policy.', 'score': false},
      ],
    },
    {
      'question': 'Who manages a mutual fund?',
      'answers': [
        {'answerText': 'The individual investors.', 'score': false},
        {'answerText': 'The bank.', 'score': false},
        {'answerText': 'The fund manager.', 'score': true},
        {'answerText': 'The government.', 'score': false},
      ],
    },
    {
      'question': 'What is a NAV in a mutual fund?',
      'answers': [
        {'answerText': 'Net Annual Value.', 'score': false},
        {
          'answerText':
              'Net Asset Value - It represents the per-unit price of the mutual fund.',
          'score': true
        },
        {'answerText': 'Non-Allocated Value.', 'score': false},
        {
          'answerText': 'National Average Value of investments.',
          'score': false
        },
      ],
    },
    {
      'question': 'What are the types of mutual funds?',
      'answers': [
        {'answerText': 'National and International.', 'score': false},
        {'answerText': 'Savings and Checking.', 'score': false},
        {
          'answerText': 'Equity, Debt, Hybrid, and Solution Oriented.',
          'score': true
        },
        {'answerText': 'Fixed and Variable.', 'score': false},
      ],
    },
    {
      'question': 'What is a SIP?',
      'answers': [
        {'answerText': 'Structured Investment Portfolio.', 'score': false},
        {
          'answerText':
              'Systematic Investment Plan - A method to invest a fixed sum regularly in a mutual fund.',
          'score': true
        },
        {'answerText': 'Sustainable Investment Platform.', 'score': false},
        {'answerText': 'Savings and Investment Plan.', 'score': false},
      ],
    },
    {
      'question': 'What is the benefit of diversification in a mutual fund?',
      'answers': [
        {'answerText': 'It allows early withdrawal of funds.', 'score': false},
        {
          'answerText': 'It guarantees a fixed return on investment.',
          'score': false
        },
        {'answerText': 'It provides tax benefits.', 'score': false},
        {
          'answerText':
              'It helps spread risk by investing in a variety of assets.',
          'score': true
        },
      ],
    },
    {
      'question': 'What is a expense ratio in a mutual fund?',
      'answers': [
        {
          'answerText': 'It is the total amount of money invested in the fund.',
          'score': false
        },
        {
          'answerText':
              'It represents the cost of managing the fund, expressed as a percentage of the fund\'s average assets.',
          'score': true
        },
        {
          'answerText': 'It is the interest earned on the fund.',
          'score': false
        },
        {
          'answerText': 'It is the dividend paid to the investors.',
          'score': false
        },
      ],
    },
    {
      'question': 'What is a load in a mutual fund?',
      'answers': [
        {
          'answerText': 'It is the profit earned by the fund manager.',
          'score': false
        },
        {
          'answerText':
              'It is a fee charged by some funds when investors buy or sell units.',
          'score': true
        },
        {
          'answerText': 'It is the maximum limit on investment.',
          'score': false
        },
        {
          'answerText': 'It is the minimum amount required to start investing.',
          'score': false
        },
      ],
    },
    {
      'question':
          'What is the difference between an open-end and a closed-end mutual fund?',
      'answers': [
        {
          'answerText':
              'Open-end funds invest only in stocks, while closed-end funds invest only in bonds.',
          'score': false
        },
        {
          'answerText': 'Open-end funds are riskier than closed-end funds.',
          'score': false
        },
        {
          'answerText':
              'Open-end funds are only available to institutional investors, while closed-end funds are for individual investors.',
          'score': false
        },
        {
          'answerText':
              'Open-end funds can issue and redeem shares at any time, while closed-end funds have a fixed number of shares and are traded on exchanges.',
          'score': true
        },
      ],
    },
    {
      'question':
          'What is the importance of the investment objective in a mutual fund?',
      'answers': [
        {
          'answerText': 'It determines the tax implications of the fund.',
          'score': false
        },
        {
          'answerText': 'It sets the minimum investment amount.',
          'score': false
        },
        {
          'answerText': 'It indicates the past performance of the fund.',
          'score': false
        },
        {
          'answerText':
              'It helps investors understand the goals and risk profile of the fund.',
          'score': true
        },
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
                            'https://youtu.be/PbldLCsspgE?si=-nCYVTucIlrcYQgv',
                        videoTitle: 'What is Mutual Funds',
                        videoDescription:
                            '''Mutual funds are a way for people to invest their money together. Imagine a group of individuals who pool their money to buy a variety of investments like stocks, bonds, or other assets. This collection of investments is managed by a professional, who makes decisions on where to invest based on the fund's goals.

When you invest in a mutual fund, you're essentially buying shares of the fund. The value of these shares goes up or down depending on how well the investments in the fund perform. This means you have a stake in the overall success (or failure) of the investments held by the fund.

One of the main benefits of mutual funds is that they allow you to diversify your investments without needing a large amount of money. Diversification means spreading your money across different types of investments, which can help reduce risk. It's like not putting all your eggs in one basket.

Another advantage is that mutual funds are managed by professionals who have expertise in selecting and managing investments. This can be a big help if you're not familiar with the complexities of the financial markets.

However, it's important to know that while mutual funds offer potential for growth, they also come with some level of risk. The value of your investment can go up and down, and there's no guarantee of returns. It's always a good idea to do some research or consult a financial advisor before investing in any mutual fund.''')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/PbldLCsspgE/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBIssNwd3sqz7eFd03-2ehgJ9UDbg",
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
                        'What is Mutual Funds',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'What is a Mutual Fund and How Does It Work?',
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
                            'https://youtu.be/8A3s9WP_7l4?si=FqyEsmiBCNkrEv12',
                        videoTitle: 'What is mutual funds by Dhruv',
                        videoDescription: '''Imagine you want to invest your money, but you're not sure where to start. This is where mutual funds come in. They're like a team of experts who manage a pool of money from many investors, all with the same goal: to grow their investments.

When you invest in a mutual fund, you're essentially buying a piece of this big pool. This pool is then used to buy different things like stocks (which are like shares of a company) or bonds (which are like loans to companies or governments). The experts, also known as fund managers, decide what to buy and when to sell, aiming to make the pool of money grow over time.

One of the cool things about mutual funds is that they let you invest in lots of different things without needing a lot of money yourself. So even if you don't have a ton of cash, you can still have a piece of many different investments.

But, like any investment, there's a chance you might not make as much money as you hoped, or even lose some. The value of the things in the pool can go up and down, kind of like a rollercoaster ride. That's why it's important to think about what level of risk you're comfortable with before choosing a mutual fund. It's like deciding how fast you want to go on a rollercoaster.

Remember, it's perfectly normal if all of this seems a bit confusing at first. Many people start off feeling that way. The important thing is to ask questions, do some research, and maybe talk to someone who knows about investing, like a financial advisor. They can help you figure out if mutual funds are a good fit for you.''')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/8A3s9WP_7l4/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBF4bcWaIsGEdy_eBqkDTejKjET5Q",
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
                        'What is mutual funds by Dhruv',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Best ways to find Funds',
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
                        videoUrl: 'https://www.youtube.com/watch?v=rsFBpGUAZWA',
                        videoTitle: 'How to Begin in Mutual Funds',
                        videoDescription:
                            '''Here's a step-by-step guide on how to begin investing in mutual funds:

1. Set Clear Financial Goals: Before you start investing in mutual funds, it's crucial to have a clear understanding of your financial goals. Are you saving for a specific milestone like buying a house, retirement, or just looking to grow your wealth over time? Knowing your goals will help you choose the right type of mutual funds.

2. Understand Your Risk Tolerance: Different mutual funds come with varying levels of risk. It's important to assess how comfortable you are with the possibility of your investments fluctuating in value. Generally, higher-risk funds have the potential for higher returns, but they can also experience greater volatility.

3.Do Your Research: Take some time to learn about mutual funds. Understand the different types (such as equity, debt, hybrid), how they work, and the fees associated with them. Look for reputable sources of information or consider consulting a financial advisor for guidance.

4. Choose the Right Mutual Fund: Based on your financial goals and risk tolerance, select a mutual fund that aligns with your objectives. For example, if you're looking for long-term growth, an equity fund might be suitable. If you prefer lower risk, a debt or balanced fund could be a better fit.

5. Select a Fund House: Mutual funds are managed by companies known as Asset Management Companies (AMCs). Choose a well-established and reputable AMC with a track record of good fund performance. This ensures that your investments are managed by experienced professionals.

6. Complete the Necessary Documentation: To invest in mutual funds, you'll need to complete some paperwork. This usually involves providing your identification details, bank account information, and sometimes, tax-related documents. This process may vary slightly depending on your location.

7. Open a Demat or Mutual Fund Account: If you don't have one already, you'll need to open a demat account or a mutual fund account with a registered intermediary like a bank or a brokerage firm. This account will serve as a platform for your mutual fund transactions.

8. Invest Regularly and Monitor Your Portfolio: Once you've chosen your mutual fund and completed the necessary paperwork, start making regular contributions. This can be through lump-sum investments or periodic contributions (SIPs - Systematic Investment Plans). Keep an eye on your investments and review your portfolio periodically to ensure it still aligns with your goals.

9. Stay Informed and Seek Advice When Needed: Keep yourself updated on market trends and the performance of your mutual funds. If you're ever unsure about a decision, consider seeking advice from a financial advisor or doing additional research.

Remember, investing in mutual funds is a long-term commitment, and it's normal for the value of your investments to fluctuate over time. Stay patient and focused on your goals.''')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/rsFBpGUAZWA/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCbyHaGxRLljYu9lO69GKB8Uw3JbA",
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
                        'How to Begin in Mutual Funds',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'What is a Mutual Fund and How Does It Work?',
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
                builder: (context) => Quiz(questions: MutualFundQuestions),
              ),
            );
          },
          child: Container(
            color: Color.fromRGBO(57, 37, 110, 0.80),
            height: 55,
            child: Align(
              alignment: Alignment.center,
              child: Text(' Take Quiz 1',
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
