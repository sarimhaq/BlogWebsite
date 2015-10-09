SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogEnteries](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[Heading] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[BlogDate] [smalldatetime] NOT NULL DEFAULT (getdate()),
	[BlogMonth] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[BlogImage] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[BlogPost] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[BlogID] [int] NULL,
	[CommentText] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[commentdate] [smalldatetime] NULL DEFAULT (getdate()),
	[commentname] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilderPicture](
	[PictureID] [int] IDENTITY(1,1) NOT NULL,
	[BlogUrl] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[PictureURL] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PictureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET IDENTITY_INSERT [dbo].[BlogEnteries] ON 

GO
INSERT [dbo].[BlogEnteries] ([BlogID], [Heading], [BlogDate], [BlogMonth], [BlogImage], [BlogPost]) VALUES (1006, N'The Real About Section', CAST(N'2014-10-29 13:51:00' AS SmallDateTime), N'October', N'~/Images/The Real About (2).jpg', N'Before I delve into spitting out jargon about myself and how I came to develop this blog, let me first make a confession to relieve you of the trouble and the joy of finding this out on your own; I am inspired by the writing style of Chuck Lorres. It would be much more productive consumption of your time to visit the website for his vanity cards than continue reading this post. Here is the link: http://www.chucklorre.com <br><br>                                                                                                                                            
Before we move forward, let me extend my gratitude to you for valuing me over Chuck Lorres(evil laugh) and let me assure you that I will do whatever it takes to ensure that your confident in me pays off (evil laugh 2). Alright, so my name is Sarim Haque and I am the following in no particular order of  importance: a Mechanical Engineer, a Graduate Student studying Business, Entrepreneurship and Technology, a jerk, a 22 year old, a Pakistani, a Bob Dylan’s fan,,  an Artic Monkey’s fan, a GoT for life! and a person with an abominable sense of humour. That pretty much sums me up.<br><br>                                                                                    
So why did I create this blog? Well to be honest, considering the self-centered, self-patronizing theme of my existence, it was natural for me to create a blog about myself, and to relate to the masses my adventures in a new country and in a reasonably new field. But things didn’t work out according to the plan. It turned out, Waterloo region was bubbling with Startups and real heros braving the uncertainty of creating a new venture from scratch. Considering the volatile nature of any Startup community, it made sense to captures these young startups at a point it time and to learn from their experiences.     <br><br>                                                                                                  
That is where the story of this blog begins. It is made so that writers aka my classmates would visit these startups, listen to their stories and relate them to others through this blog. Hopefully, this interaction would prove to be beneficial for both of the parties involved. At the Conrad Center (where I am studying) there is an invaluable resource in the form of its faculty. These guys/girls aren’t just academically brilliant but also happen to be seasoned entrepreneurs. If myself and my fellow MBETers could help out even a single startup through the knowledge gained in the classrooms and if listening to the stories of these startups, encourages even a single person to embark on a journey of his/her own venture creation, I would consider all the countless hours staring at html, c# and css code to be worth the pain in the ass.                                                                                            ')
GO
INSERT [dbo].[BlogEnteries] ([BlogID], [Heading], [BlogDate], [BlogMonth], [BlogImage], [BlogPost]) VALUES (1007, N'On Being A Foreigner', CAST(N'2014-10-29 13:53:00' AS SmallDateTime), N'October', N'~/Images/Foriegner.jpg', N'I wish I had a famous person to quote at the beginning of this blog. But unfortunately, I am too lazy to go on Google and search for a quote. So sorry folks, you would have to accept the first two sentences the way they are. And really, it does suck to be a foreigner. Now before you guys start feeling sorry about me, considering as a Canadian, empathy is your second nature, let me sussh all those “awws” and “ohhhs” by confessing that I deserve to be feeling sucky (hmmm, that’s a word). The reason being that I am a spoiled Pakistani who didn’t even learn to drive because his parents always employed a driver. In Canada you wouldn’t even think about getting a driver unless you have sold your company to Google or you are an artist who has hit the jackpot in Hollywood. <br><br>
So I had foreign students back in my undergrad and for some reason I always felt pity for them even  though they were getting paid by their governments to receive education (long story). Now that I am on the other side of the experience, I view things from a totally different perspective. It’s always helpful to play the “oh, I am just an ignorant foreigner” card when you do something stupid but sometimes it just gets too frustrating. Take crossing the road as an example; you see, not everyone in the world drive on the wrong side of the road. People in England and the Sub-Continent haven’t forgotten that steering oath to be on the right hand side of a car. So I always cross the road in a mortal fear of being squished by a car coming from the direction opposite to where I am looking. That’s not a good feeling.<br><br>  
Not only that but the weather in Canada is confusing (maybe I would have used a different adjective to describe Canada’s weather had I witnessed the winter season, but I am a dumb foreigner). From where I came from, it was summer for 7 months, awfully dry weather for one month, winter for 2 months and weather on LSD for remaining two months. In Canada, I don’t even know how to dress up before leaving my house. One day, you are required to go out looking like an astronaut and the next day you go out like you are in Miami (or Karachi, unless you know where Karachi is, you know about its weather, you have… just forget about it). There has been one too many days when I have gone out with a heavy jacket only to see another person pass by me in his/her shorts and sleeveless shirt making me feel like a dumb foreigner. <br><br>
That somehow brings me to a problem shared by all foreigners coming from a country where English or French (considering your location inside Canada) is not spoken as a first language. The barrier that was constructed millions of years ago when one of our ancestors got drunk and found it amusing to distort spoken words; the Language Barrier. Maybe I am not the right person to talk about language barrier since even when I speak my native tongue, people don’t understand me, but form what I have heard form my classmates, it’s really hard to make a switch from being fluent in your native tongue, to being a person who speaks English as if he/she is suffering from seizures.<br><br>
Anyways, humans say that humans are the most adaptable species on this Earth (speak up squirrel if you disagree). So if you are an international student like me, don’t be overwhelmed by these petty issues. You will learn to get over them in no time. On the other hand, if you are local student, be grateful of the fact that you don’t have to travel across oceans and mountains and you don’t have to pay huge sums of money just to get a good education. So on that positive point, adios.  
')
GO
SET IDENTITY_INSERT [dbo].[BlogEnteries] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

GO
INSERT [dbo].[Comments] ([CommentID], [BlogID], [CommentText], [commentdate], [commentname]) VALUES (2023, 1006, N'Amazing article, cheers bro!', CAST(N'2014-10-30 03:54:00' AS SmallDateTime), N'Sarim Haque')
GO
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[SilderPicture] ON 

GO
INSERT [dbo].[SilderPicture] ([PictureID], [BlogUrl], [PictureURL]) VALUES (1004, N'Index.aspx#about', N'~/Images/CoverHelloWorld.jpg')
GO
INSERT [dbo].[SilderPicture] ([PictureID], [BlogUrl], [PictureURL]) VALUES (1005, N'http://localhost:52147/readblog.aspx?id=1006', N'~/Images/The Real About (2).jpg')
GO
INSERT [dbo].[SilderPicture] ([PictureID], [BlogUrl], [PictureURL]) VALUES (1006, N'http://localhost:52147/readblog.aspx?id=1007', N'~/Images/Foriegner.jpg')
GO
SET IDENTITY_INSERT [dbo].[SilderPicture] OFF
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([BlogID])
REFERENCES [dbo].[BlogEnteries] ([BlogID])
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[AddComment]
(
@BlogID int,
@CommentText nvarchar(max),
@commentdate smalldatetime,
@commentname nvarchar(50)
)
as
Begin
Insert into Comments values
(
@BlogID,
@CommentText,
@commentdate,
@commentname
)
End
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use [mybetdata]

--Create Proc InsertBlogs
--(
--@Heading nvarchar(Max),
--@BlogDate smalldatetime,
--@BlogMonth nvarchar(200),
--@BlogImage nvarchar(200),
--@BlogPost nvarchar(max)
--)
--as
--Begin
--Insert into BlogEnteries values
--(
--@Heading,
--@BlogDate,
--@BlogMonth,
--@BlogImage,
--@BlogPost
--)
--End

--Create Proc NewSliderAddition
--(
--@BlogUrl nvarchar(200),
--@PictureUrl nvarchar(200)
--)
--as
--Begin
--Insert into SilderPicture values
--(
--@BlogUrl,
--@PictureUrl
--)
--End

--Create Proc DeleteSlider
--(
--@PictureID int
--)
--as
--Begin
--Delete from SilderPicture where PictureID = @PictureID
--End

--Create Proc TopSixEnteries
--as
--Begin
--Select Top 6 * from BlogEnteries Order By BlogID desc
--End

Create Proc AllBlogs
as
Begin
Select * from BlogEnteries Order By BlogID desc
End
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use [mybetdata]

--Create Proc InsertBlogs
--(
--@Heading nvarchar(Max),
--@BlogDate smalldatetime,
--@BlogMonth nvarchar(200),
--@BlogImage nvarchar(200),
--@BlogPost nvarchar(max)
--)
--as
--Begin
--Insert into BlogEnteries values
--(
--@Heading,
--@BlogDate,
--@BlogMonth,
--@BlogImage,
--@BlogPost
--)
--End

--Create Proc NewSliderAddition
--(
--@BlogUrl nvarchar(200),
--@PictureUrl nvarchar(200)
--)
--as
--Begin
--Insert into SilderPicture values
--(
--@BlogUrl,
--@PictureUrl
--)
--End

--Create Proc DeleteSlider
--(
--@PictureID int
--)
--as
--Begin
--Delete from SilderPicture where PictureID = @PictureID
--End

--Create Proc TopSixEnteries
--as
--Begin
--Select Top 6 * from BlogEnteries Order By BlogID desc
--End

--Create Proc AllBlogs
--as
--Begin
--Select * from BlogEnteries Order By BlogID desc
--End

--Create Proc MonthWiseBlogs
--(
--@BlogMonth nvarchar(200)
--)
--as
--Begin
--Select * from BlogEnteries where BlogMonth=@BlogMonth 
--End

Create Proc CommentRetrieval
(
@BlogID int
)
as
Begin
Select * from Comments where BlogID = @BlogID 
End
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc DeleteBlog
(
@BlogID int
)
as
Begin
Delete from BlogEnteries where BlogID = @BlogID
End
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use [mybetdata]

--Create Proc InsertBlogs
--(
--@Heading nvarchar(Max),
--@BlogDate smalldatetime,
--@BlogMonth nvarchar(200),
--@BlogImage nvarchar(200),
--@BlogPost nvarchar(max)
--)
--as
--Begin
--Insert into BlogEnteries values
--(
--@Heading,
--@BlogDate,
--@BlogMonth,
--@BlogImage,
--@BlogPost
--)
--End

--Create Proc NewSliderAddition
--(
--@BlogUrl nvarchar(200),
--@PictureUrl nvarchar(200)
--)
--as
--Begin
--Insert into SilderPicture values
--(
--@BlogUrl,
--@PictureUrl
--)
--End

Create Proc DeleteSlider
(
@PictureID int
)
as
Begin
Delete from SilderPicture where PictureID = @PictureID
End


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[getmonths]
as
Begin

SELECT DISTINCT BlogMonth, Max(BlogID) from BlogEnteries GROUP BY BlogMonth order by Max(BlogID), BlogMonth 
End



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use [mybetdata]

Create Proc InsertBlogs
(
@Heading nvarchar(Max),
@BlogDate smalldatetime,
@BlogMonth nvarchar(200),
@BlogImage nvarchar(200),
@BlogPost nvarchar(max)
)
as
Begin
Insert into BlogEnteries values
(
@Heading,
@BlogDate,
@BlogMonth,
@BlogImage,
@BlogPost
)
End

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use [mybetdata]

--Create Proc InsertBlogs
--(
--@Heading nvarchar(Max),
--@BlogDate smalldatetime,
--@BlogMonth nvarchar(200),
--@BlogImage nvarchar(200),
--@BlogPost nvarchar(max)
--)
--as
--Begin
--Insert into BlogEnteries values
--(
--@Heading,
--@BlogDate,
--@BlogMonth,
--@BlogImage,
--@BlogPost
--)
--End

--Create Proc NewSliderAddition
--(
--@BlogUrl nvarchar(200),
--@PictureUrl nvarchar(200)
--)
--as
--Begin
--Insert into SilderPicture values
--(
--@BlogUrl,
--@PictureUrl
--)
--End

--Create Proc DeleteSlider
--(
--@PictureID int
--)
--as
--Begin
--Delete from SilderPicture where PictureID = @PictureID
--End

--Create Proc TopSixEnteries
--as
--Begin
--Select Top 6 * from BlogEnteries Order By BlogID desc
--End

--Create Proc AllBlogs
--as
--Begin
--Select * from BlogEnteries Order By BlogID desc
--End

CREATE Proc [dbo].[MonthWiseBlogs]
(
@BlogMonth nvarchar(200)
)
as
Begin
Select * from BlogEnteries where BlogMonth = @BlogMonth 
End
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use [mybetdata]

--Create Proc InsertBlogs
--(
--@Heading nvarchar(Max),
--@BlogDate smalldatetime,
--@BlogMonth nvarchar(200),
--@BlogImage nvarchar(200),
--@BlogPost nvarchar(max)
--)
--as
--Begin
--Insert into BlogEnteries values
--(
--@Heading,
--@BlogDate,
--@BlogMonth,
--@BlogImage,
--@BlogPost
--)
--End

Create Proc NewSliderAddition
(
@BlogUrl nvarchar(200),
@PictureUrl nvarchar(200)
)
as
Begin
Insert into SilderPicture values
(
@BlogUrl,
@PictureUrl
)
End

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use [mybetdata]

--Create Proc InsertBlogs
--(
--@Heading nvarchar(Max),
--@BlogDate smalldatetime,
--@BlogMonth nvarchar(200),
--@BlogImage nvarchar(200),
--@BlogPost nvarchar(max)
--)
--as
--Begin
--Insert into BlogEnteries values
--(
--@Heading,
--@BlogDate,
--@BlogMonth,
--@BlogImage,
--@BlogPost
--)
--End

--Create Proc NewSliderAddition
--(
--@BlogUrl nvarchar(200),
--@PictureUrl nvarchar(200)
--)
--as
--Begin
--Insert into SilderPicture values
--(
--@BlogUrl,
--@PictureUrl
--)
--End

--Create Proc DeleteSlider
--(
--@PictureID int
--)
--as
--Begin
--Delete from SilderPicture where PictureID = @PictureID
--End

--Create Proc TopSixEnteries
--as
--Begin
--Select Top 6 * from BlogEnteries Order By BlogID desc
--End

--Create Proc AllBlogs
--as
--Begin
--Select * from BlogEnteries Order By BlogID desc
--End

--Create Proc MonthWiseBlogs
--(
--@BlogMonth nvarchar(200)
--)
--as
--Begin
--Select * from BlogEnteries where BlogMonth=@BlogMonth 
--End

--Create Proc CommentRetrieval
--(
--@BlogID int
--)
--as
--Begin
--Select * from Comments where BlogID = @BlogID 
--End

--Create Proc AddComment
--(
--@BlogID int,
--@CommentText nvarchar(max)
--)
--as
--Begin
--Insert into Comments values
--(
--@BlogID,
--@CommentText
--)
--End

--Create Proc SingleBlogRetrievel
--(
--@BlogID int
--)
--as
--Begin
--Select * from BlogEnteries where BlogID = @BlogID
--End

Create Proc Search
(
@Query nvarchar
)
as
Begin
Select * from BlogEnteries where Heading like '%'+@Query+'%' OR BlogPost like '%'+@Query+'%' 
End
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use [mybetdata]

--Create Proc InsertBlogs
--(
--@Heading nvarchar(Max),
--@BlogDate smalldatetime,
--@BlogMonth nvarchar(200),
--@BlogImage nvarchar(200),
--@BlogPost nvarchar(max)
--)
--as
--Begin
--Insert into BlogEnteries values
--(
--@Heading,
--@BlogDate,
--@BlogMonth,
--@BlogImage,
--@BlogPost
--)
--End

--Create Proc NewSliderAddition
--(
--@BlogUrl nvarchar(200),
--@PictureUrl nvarchar(200)
--)
--as
--Begin
--Insert into SilderPicture values
--(
--@BlogUrl,
--@PictureUrl
--)
--End

--Create Proc DeleteSlider
--(
--@PictureID int
--)
--as
--Begin
--Delete from SilderPicture where PictureID = @PictureID
--End

--Create Proc TopSixEnteries
--as
--Begin
--Select Top 6 * from BlogEnteries Order By BlogID desc
--End

--Create Proc AllBlogs
--as
--Begin
--Select * from BlogEnteries Order By BlogID desc
--End

--Create Proc MonthWiseBlogs
--(
--@BlogMonth nvarchar(200)
--)
--as
--Begin
--Select * from BlogEnteries where BlogMonth=@BlogMonth 
--End

--Create Proc CommentRetrieval
--(
--@BlogID int
--)
--as
--Begin
--Select * from Comments where BlogID = @BlogID 
--End

--Create Proc AddComment
--(
--@BlogID int,
--@CommentText nvarchar(max)
--)
--as
--Begin
--Insert into Comments values
--(
--@BlogID,
--@CommentText
--)
--End

CREATE Proc [dbo].[SingleBlogRetrievel]
(
@BlogID int
)
as
Begin
Select * from BlogEnteries where BlogID = @BlogID
End
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc SliderPic
as
Begin
SELECT TOP 3 * FROM SilderPicture;
End


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use [mybetdata]

--Create Proc InsertBlogs
--(
--@Heading nvarchar(Max),
--@BlogDate smalldatetime,
--@BlogMonth nvarchar(200),
--@BlogImage nvarchar(200),
--@BlogPost nvarchar(max)
--)
--as
--Begin
--Insert into BlogEnteries values
--(
--@Heading,
--@BlogDate,
--@BlogMonth,
--@BlogImage,
--@BlogPost
--)
--End

--Create Proc NewSliderAddition
--(
--@BlogUrl nvarchar(200),
--@PictureUrl nvarchar(200)
--)
--as
--Begin
--Insert into SilderPicture values
--(
--@BlogUrl,
--@PictureUrl
--)
--End

--Create Proc DeleteSlider
--(
--@PictureID int
--)
--as
--Begin
--Delete from SilderPicture where PictureID = @PictureID
--End

Create Proc TopSixEnteries
as
Begin
Select Top 6 * from BlogEnteries Order By BlogID desc
End
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use[mybetdata];
Create Procedure UpdateBlogText
(
@BlogID int,
@BlogPost nvarchar(max)
) 
as 
Begin
Update BlogEnteries set
BlogPost = @BlogPost
where BlogID=@BlogID
End


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[UpdateHeading]
(
@BlogID int,
@Heading nvarchar(max)
) 
as 
Begin
Update BlogEnteries set
Heading = @Heading
where BlogID=@BlogID
End
GO
