// LogRocket
import LogRocket from 'logrocket';

LogRocket.init('denis-dujota/resumeblog-site');

// Note that the gon include in the rails layout needs to be above this file's javascript_pack_tag
if (window.gon) {
  const { current_user_id: currentUserId, current_user_email: email, current_user_role_names: userType } = window.gon;

  LogRocket.identify(currentUserId, {
    email,
    userType,
  });
}
