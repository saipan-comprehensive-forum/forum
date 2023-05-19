CREATE TABLE User (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50),
    Email VARCHAR(100),
    RegistrationDate TIMESTAMP,
    LastLogin TIMESTAMP
);

CREATE TABLE UserPassword (
    UserID INT PRIMARY KEY,
    PasswordHash VARCHAR(255), -- Stored securely as a hash
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

CREATE TABLE UserOAuth (
    UserID INT,
    OAuthProvider VARCHAR(50), -- Can be 'Google', 'Facebook', 'WeChat'
    OAuthID VARCHAR(255), -- The ID of the user in the OAuth provider system
    PRIMARY KEY (UserID, OAuthProvider),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100),
    Description TEXT,
    CreationDate TIMESTAMP
);

CREATE TABLE Thread (
    ThreadID INT PRIMARY KEY,
    CategoryID INT,
    UserID INT,
    Title VARCHAR(255),
    CreationDate TIMESTAMP,
    LastPostDate TIMESTAMP,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

CREATE TABLE Post (
    PostID INT PRIMARY KEY,
    ThreadID INT,
    UserID INT,
    PostContent TEXT,
    PostDate TIMESTAMP,
    FOREIGN KEY (ThreadID) REFERENCES Thread(ThreadID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

CREATE TABLE Comments (
    CommentID INT PRIMARY KEY,
    PostID INT,
    UserID INT,
    CommentContent TEXT,
    CommentDate TIMESTAMP,
    FOREIGN KEY (PostID) REFERENCES Post(PostID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);