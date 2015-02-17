SET IDENTITY_INSERT [UserProfile] ON
INSERT INTO dbo.[UserProfile] ([UserId],[UserName]) VALUES (1,'Admin');
SET IDENTITY_INSERT [UserProfile] OFF

INSERT INTO dbo.[webpages_Membership]([UserId],[CreateDate],[ConfirmationToken],[IsConfirmed],[LastPasswordFailureDate],[PasswordFailuresSinceLastSuccess],[Password],[PasswordChangedDate],[PasswordSalt],[PasswordVerificationToken],[PasswordVerificationTokenExpirationDate]) VALUES(1,GETDATE(),NULL,1,NULL,0,'ACX1hCXJrrXVbLe+OaPTIyZTpxA7WjwDlnFqnfiQUVJ/60cLvQyCOBoZX+V7kng1sA==',NULL,'',NULL,NULL)

