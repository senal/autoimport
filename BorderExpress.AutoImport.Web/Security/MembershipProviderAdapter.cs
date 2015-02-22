using Castle.Windsor;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.Security;
using WebMatrix.WebData;

namespace BorderExpress.AutoImport.Web.Security
{
    public class MembershipProviderAdapter : ExtendedMembershipProvider
    {

        private string providerId;
        

        public override void Initialize(string name, NameValueCollection config)
        {
            base.Initialize(name, config);
            providerId = config["providerId"];
            if (string.IsNullOrWhiteSpace(providerId))
                throw new Exception("Please configure the providerId from the membership provider " + name);
        }


        private ExtendedMembershipProvider GetProvider()
        {
            try
            {
                var provider = GetContainer().Resolve(providerId, new Hashtable()) as ExtendedMembershipProvider;
                if (provider == null)
                    throw new Exception(string.Format("Component '{0}' does not inherit MembershipProvider", providerId));
                return provider;
            }
            catch (Exception e)
            {
                throw new Exception("Error resolving MembershipProvider " + providerId, e);
            }
        }

        private T WithProvider<T>(Func<ExtendedMembershipProvider, T> f)
        {
            var provider = GetProvider();
            try
            {
                return f(provider);
            }
            finally
            {
                GetContainer().Release(provider);
            }
        }

        private void WithProvider(Action<ExtendedMembershipProvider> f)
        {
            var provider = GetProvider();
            try
            {
                f(provider);
            }
            finally
            {
                GetContainer().Release(provider);
            }
        }

       

        public override DateTime GetLastPasswordFailureDate(string userName)
        {
           return  WithProvider(p=>p.GetLastPasswordFailureDate(userName));
        }

        public override DateTime GetPasswordChangedDate(string userName)
        {
            return WithProvider(p => p.GetPasswordChangedDate(userName));
        }

        public override int GetPasswordFailuresSinceLastSuccess(string userName)
        {
            return WithProvider(p => p.GetPasswordFailuresSinceLastSuccess(userName));
        }

        public override int GetUserIdFromPasswordResetToken(string token)
        {
            return WithProvider(p => p.GetUserIdFromPasswordResetToken(token));
        }

        public override bool IsConfirmed(string userName)
        {
            return WithProvider(p => p.IsConfirmed(userName));
        }

        public override bool ResetPasswordWithToken(string token, string newPassword)
        {
            return WithProvider(p => p.ResetPasswordWithToken(token: token, newPassword: newPassword));
        }

        public override string ApplicationName
        {
            get
            {
                return WithProvider(p => p.ApplicationName);
            }
            set
            {
                WithProvider(p => p.ApplicationName = value);
            }
        }

        public override bool ChangePassword(string username, string oldPassword, string newPassword)
        {
            return WithProvider(p => p.ChangePassword(username: username, oldPassword: oldPassword, newPassword: newPassword));
        }

        public override bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer)
        {
            return WithProvider(p => p.ChangePasswordQuestionAndAnswer(
                username: username,
                password: password,
                newPasswordQuestion: newPasswordQuestion,
                newPasswordAnswer: newPasswordAnswer));
        }

        public override MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status)
        {
            var localStatus = new MembershipCreateStatus();
            var mem = WithProvider(p => p.CreateUser(
                 username: username,
                 password: password,
                 email: email,
                 passwordQuestion: passwordQuestion,
                 passwordAnswer: passwordAnswer,
                 isApproved: isApproved,
                 providerUserKey: providerUserKey,
                  status: out localStatus
                 ));
            status = localStatus;
            return mem;
        }

        public override bool DeleteUser(string username, bool deleteAllRelatedData)
        {
            return WithProvider(p => p.DeleteUser(username, deleteAllRelatedData));
        }

        public override bool EnablePasswordReset
        {
            get { return WithProvider(p => p.EnablePasswordReset); }
        }

        public override bool EnablePasswordRetrieval
        {
            get { return WithProvider(p => p.EnablePasswordRetrieval); }
        }

        public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            int localTotalRecords = 0;
            var mem = WithProvider(p => p.FindUsersByEmail(
                emailToMatch: emailToMatch, 
                pageIndex: pageIndex, 
                pageSize: pageSize, 
                totalRecords: out localTotalRecords
                ));
            totalRecords = localTotalRecords;
            return mem;
        }

        public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            int localTotalRecords = 0;
            var mem = WithProvider(p => p.FindUsersByName(
                usernameToMatch:usernameToMatch,
                pageIndex:pageIndex,
                pageSize:pageSize,
                totalRecords: out localTotalRecords
                ));
            totalRecords = localTotalRecords;
            return mem;
        }

        public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
        {
            int localTotalRecords = 0;
            var mem = WithProvider(p => p.GetAllUsers(
                pageIndex: pageIndex,
                pageSize: pageSize,
                totalRecords: out localTotalRecords
                ));
            totalRecords = localTotalRecords;
            return mem;
        }

        public override int GetNumberOfUsersOnline()
        {
            return WithProvider(p => p.GetNumberOfUsersOnline());
        }

        public override string GetPassword(string username, string answer)
        {
            return WithProvider(p => p.GetPassword(username, answer));
        }

        public override MembershipUser GetUser(string username, bool userIsOnline)
        {
            return WithProvider(p => p.GetUser(username, userIsOnline));
        }

        public override MembershipUser GetUser(object providerUserKey, bool userIsOnline)
        {
            return WithProvider(p => p.GetUser(providerUserKey, userIsOnline));
        }

        public override string GetUserNameByEmail(string email)
        {
            return WithProvider(p => p.GetUserNameByEmail(email));
        }

        public override int MaxInvalidPasswordAttempts
        {
            get { return WithProvider(p => p.MaxInvalidPasswordAttempts); }
        }

        public override int MinRequiredNonAlphanumericCharacters
        {
            get { return WithProvider(p => p.MinRequiredNonAlphanumericCharacters); }
        }

        public override int MinRequiredPasswordLength
        {
            get { return WithProvider(p => p.MinRequiredPasswordLength); }
        }

        public override int PasswordAttemptWindow
        {
            get { return WithProvider(p => p.PasswordAttemptWindow); }
        }

        public override MembershipPasswordFormat PasswordFormat
        {
            get { return WithProvider(p => p.PasswordFormat); }
        }

        public override string PasswordStrengthRegularExpression
        {
            get { return WithProvider(p => p.PasswordStrengthRegularExpression); }
        }

        public override bool RequiresQuestionAndAnswer
        {
            get { return WithProvider(p => p.RequiresQuestionAndAnswer); }
        }

        public override bool RequiresUniqueEmail
        {
            get { return WithProvider(p => p.RequiresUniqueEmail); }
        }

        public override string ResetPassword(string username, string answer)
        {
            return WithProvider(p => p.ResetPassword(username, answer));
        }

        public override bool UnlockUser(string userName)
        {
            return WithProvider(p => p.UnlockUser(userName));
        }

        public override void UpdateUser(MembershipUser user)
        {
            WithProvider(p => p.UpdateUser(user));
        }

        public override bool ValidateUser(string username, string password)
        {
            return WithProvider(p => p.ValidateUser(username, password));
           
        }

        public IWindsorContainer GetContainer()
        {
            var context = HttpContext.Current;
            if (context == null)
                throw new Exception("No HttpContext");
            var accessor = context.ApplicationInstance as IContainerAccessor;
            if (accessor == null)
                throw new Exception("The global HttpApplication instance needs to implement " + typeof(IContainerAccessor).FullName);
            if (accessor.Container == null)
                throw new Exception("HttpApplication has no container initialized");
            return accessor.Container;
        }

        public override bool ConfirmAccount(string accountConfirmationToken)
        {
            throw new NotImplementedException();
        }

        public override bool ConfirmAccount(string userName, string accountConfirmationToken)
        {
            throw new NotImplementedException();
        }

        public override string CreateAccount(string userName, string password, bool requireConfirmationToken)
        {
            throw new NotImplementedException();
        }

        public override string CreateUserAndAccount(string userName, string password, bool requireConfirmation, IDictionary<string, object> values)
        {
            throw new NotImplementedException();
        }

        public override bool DeleteAccount(string userName)
        {
            throw new NotImplementedException();
        }

        public override string GeneratePasswordResetToken(string userName, int tokenExpirationInMinutesFromNow)
        {
            throw new NotImplementedException();
        }

        public override ICollection<OAuthAccountData> GetAccountsForUser(string userName)
        {
            throw new NotImplementedException();
        }

        public override DateTime GetCreateDate(string userName)
        {
            throw new NotImplementedException();
        }
    }

}