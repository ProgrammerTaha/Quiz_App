1
00:00:02,360 --> 00:00:05,570
This was a pretty long module,

2
00:00:05,630 --> 00:00:12,260
I now want to wrap it up or bring it to an end by making this quiz a bit more realistic and showing

3
00:00:12,260 --> 00:00:16,090
different results based on which answers we chose.

4
00:00:16,130 --> 00:00:19,640
Now of course, you could now make this extremely complex,

5
00:00:19,670 --> 00:00:22,300
I will make it relatively simple though.

6
00:00:22,640 --> 00:00:29,450
What I want to do is I want to turn each answer here also into a map, by wrapping it with curly braces

7
00:00:30,080 --> 00:00:34,250
and then we'll of course have our text or answer text or whatever you want to name it

8
00:00:34,580 --> 00:00:40,640
and now that's important, you think I want to assign a score to this answer because we have kind of a

9
00:00:40,640 --> 00:00:47,330
personality quiz here, so we can calculate an overall score of the personality of the person who takes

10
00:00:47,330 --> 00:00:48,640
our quiz.

11
00:00:48,650 --> 00:00:51,730
Now let's say and that's of course just my logic here,

12
00:00:51,740 --> 00:00:56,760
the higher the score, the more strange or negative a person is and

13
00:00:56,770 --> 00:01:01,940
therefore if you for example select black as your favorite color, I'll give you a score of 10,

14
00:01:02,060 --> 00:01:10,810
on the other hand here for red where then red is our text,

15
00:01:10,810 --> 00:01:19,150
we might go with a score of let's say 6 or 5 because red is more positive than black in my world at

16
00:01:19,150 --> 00:01:24,420
least. Now green is even more positive because green is the color of hope

17
00:01:24,640 --> 00:01:30,250
and of course, feel free to assign your own scores to fit your own personal judgment of these colors

18
00:01:30,520 --> 00:01:32,750
but I'll gave green a color of three

19
00:01:32,920 --> 00:01:36,100
and white is of course the color of innocence,

20
00:01:36,100 --> 00:01:44,960
so here for white, I'll actually give that a score of let's say 1.

21
00:01:44,980 --> 00:01:46,510
So with that, these are my answers,

22
00:01:46,510 --> 00:01:52,420
they're now all maps, not just text, they've got a text key but then they also got scores.

23
00:01:52,450 --> 00:01:58,780
Now of course, we can do the same here for our animals and I will now fast forward here,

24
00:01:58,810 --> 00:02:04,960
of course feel free to assign your own scores or take the ones you find attached, attached you basically

25
00:02:04,960 --> 00:02:06,940
find that questions list

26
00:02:06,940 --> 00:02:14,870
now with all my finished scores assigned and we can then proceed with that. So with the finished

27
00:02:14,930 --> 00:02:16,230
list here,

28
00:02:16,310 --> 00:02:23,930
now of course when I pass down my questions here into the quiz, inside of the quiz widget where I build

29
00:02:23,930 --> 00:02:31,280
these answer widgets, the answer I'm forwarding here is no longer just a string, that is incorrect instead

30
00:02:31,340 --> 00:02:34,490
each answer I'm looking at is of course itself

31
00:02:34,490 --> 00:02:43,450
now a map, so we should change this, a map where we have a string key and then objects, various values

32
00:02:43,480 --> 00:02:52,990
because we have in our answers, we have both text and we have numbers. So therefore here when I map, answer

33
00:02:53,020 --> 00:03:01,620
now is also a map with various values and therefore here I'm of course interested in my text, in the

34
00:03:01,620 --> 00:03:11,190
answer text which I know will be a string but I will also need the score to calculate a total score

35
00:03:11,250 --> 00:03:15,450
of course and for that here to answerQuestion,

36
00:03:15,460 --> 00:03:22,050
so to that function which we have in the main.dart file, this _answerQuestion function here,

37
00:03:22,180 --> 00:03:26,200
we actually need to get the score of the answer which was chosen.

38
00:03:26,200 --> 00:03:32,670
So I expect a score here as an argument and this should be an integer, to calculate a total score.

39
00:03:32,770 --> 00:03:40,330
Hence we should also add a total score, _totalScore here, a total score property in our overall

40
00:03:40,330 --> 00:03:48,940
class and then here in answerQuestion, I want to increase or add to the total score the score that we

41
00:03:48,940 --> 00:03:49,720
chose.

42
00:03:49,750 --> 00:03:56,060
So total score should be equal to total score plus score By the way

43
00:03:56,060 --> 00:04:02,060
if you have a setup like this, there also is a shortcut in Dart, instead of using equal old value plus

44
00:04:02,510 --> 00:04:03,740
some new value,

45
00:04:03,740 --> 00:04:09,590
you can also have plus equal and this will add this value to the old value before it then saves it back

46
00:04:09,740 --> 00:04:10,960
into that variable.

47
00:04:11,300 --> 00:04:13,730
So we add our score to the total score

48
00:04:13,730 --> 00:04:20,720
now in answerQuestion but now we have to make sure that in the quiz.dart file here where we forward

49
00:04:21,070 --> 00:04:28,580
answerQuestion to an answer, we actually make sure that we call answer questions with the chosen score

50
00:04:29,180 --> 00:04:34,610
and at the moment where we only point a reference, a pointer at that function,

51
00:04:34,610 --> 00:04:36,910
we're not doing that because with just a pointer,

52
00:04:36,910 --> 00:04:43,310
we're not saying anything about the arguments that this function takes when it is called and by default,

53
00:04:43,310 --> 00:04:49,430
Flutter will call it without any arguments because we must not forget that our function here is bound

54
00:04:49,460 --> 00:04:53,990
to onPressed and onPressed takes a function without arguments.

55
00:04:54,050 --> 00:05:01,640
So what do we do? In quiz.dart where I build my answer widgets, where I forward that pointer at answer

56
00:05:01,640 --> 00:05:09,260
question, instead of forwarding this, I can forward an anonymous function and here I use this one line

57
00:05:09,320 --> 00:05:12,850
arrow function syntax which I also showed you earlier.

58
00:05:12,950 --> 00:05:19,220
Now by doing this, I create a function on the fly and to the answer widget, I automatically only pass

59
00:05:19,220 --> 00:05:20,760
the address to that function.

60
00:05:20,780 --> 00:05:26,420
So that function is created on the fly, stored in memory and instead of storing it in a variable which

61
00:05:26,420 --> 00:05:30,900
then holds the address which I could use here, I automatically get back the address,

62
00:05:30,920 --> 00:05:35,030
so I do get the address here and I forward that address to answer.

63
00:05:35,060 --> 00:05:41,160
Now the thing is therefore my answer widget still gets a function which takes no arguments right,

64
00:05:41,170 --> 00:05:44,720
that is an empty list and that then does something.

65
00:05:44,720 --> 00:05:52,220
Now here however on the right side of the arrow here, I'm in the function body of that anonymous function.

66
00:05:52,220 --> 00:05:58,600
So here, I no longer want to just use the address, here I instead want to call answerQuestion

67
00:05:58,670 --> 00:05:59,480
Why?

68
00:05:59,480 --> 00:06:05,960
Because this is now not executed when Dart parses this, there it will only create this anonymous function

69
00:06:05,960 --> 00:06:07,240
and store it in memory

70
00:06:07,370 --> 00:06:13,790
but this is now executed when onPressed is triggered, right because it's an anonymous function where

71
00:06:13,790 --> 00:06:18,880
I forward the address to answer, the address is then bound to the button here,

72
00:06:19,010 --> 00:06:25,610
so when a button is pressed, this address is used to then execute this anonymous function. So this function

73
00:06:25,610 --> 00:06:28,740
body here is only triggered when the button is pressed.

74
00:06:28,760 --> 00:06:32,380
Therefore when it is pressed, I do want to call answerQuestion

75
00:06:32,510 --> 00:06:40,640
and now since I call it here, I do have access to my answer map here, to my answer object and therefore

76
00:06:40,640 --> 00:06:46,820
also to the score because every answer through which I'm looping here or through which I'm going here, every

77
00:06:46,820 --> 00:06:55,270
answer is just a map with a text and a score and now I can access that score here. So I can now forward

78
00:06:56,250 --> 00:07:03,220
answer score here to answerQuestion and I know that this will be an integer and therefore, answer

79
00:07:03,230 --> 00:07:06,630
question here will receive my integer score,

80
00:07:06,630 --> 00:07:07,480
here it is.

81
00:07:08,350 --> 00:07:10,050
I hope this flow is clear,

82
00:07:10,090 --> 00:07:16,000
it's really just about passing function references around and here we're creating such a function and

83
00:07:16,040 --> 00:07:23,260
therefore also such a function reference on the fly. It only gets executed when the button is pressed though,

84
00:07:23,290 --> 00:07:31,000
so when it is pressed I of course want to execute this function in here. So with that, I can forward the score

85
00:07:31,030 --> 00:07:32,400
to my answer

86
00:07:32,400 --> 00:07:37,230
question function here in main and I do increment the total score now.

87
00:07:37,420 --> 00:07:44,470
I now want to forward that total score to the result widget so that I can show different results there.
