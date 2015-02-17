SET IDENTITY_INSERT [UserProfile] ON
INSERT INTO dbo.[UserProfile] ([UserId],[UserName]) VALUES (1,'Admin');
SET IDENTITY_INSERT [UserProfile] OFF

INSERT INTO dbo.[webpages_Membership]([UserId],[CreateDate],[ConfirmationToken],[IsConfirmed],[LastPasswordFailureDate],[PasswordFailuresSinceLastSuccess],[Password],[PasswordChangedDate],[PasswordSalt],[PasswordVerificationToken],[PasswordVerificationTokenExpirationDate]) VALUES(1,GETDATE(),NULL,1,NULL,0,'CA3456C2CFA046E4CB5BB2DBF35353759814C657x6bb0YW3PkCwqD3Y28JBSsU0tXRh4mug7C/tkVAhW6Q=',NULL,'x6bb0YW3PkCwqD3Y28JBSsU0tXRh4mug7C/tkVAhW6Q=',NULL,NULL)

