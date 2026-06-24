import 'package:flutter/material.dart';

//ADMIN
//LOGIN
import 'package:loboko/views/admin/login/login_admin_screen.dart';

//DASHBOARD
import 'package:loboko/views/admin/dashboard/admin_dashboard_screen.dart';

//PRESTATAIRE
import 'package:loboko/views/admin/prestataires/pending_prestataires_screen.dart';
import 'package:loboko/views/admin/prestataires/validated_prestataires_screen.dart';
import 'package:loboko/views/admin/prestataires/rejected_prestataires_screen.dart';
import 'package:loboko/views/admin/prestataires/prestataire_details_screen.dart';

import 'package:loboko/views/admin/users/users_screen.dart';
import 'package:loboko/views/admin/users/client_details_screen.dart';
import 'package:loboko/views/admin/users/prestataire_details_screen.dart';

import 'package:loboko/views/admin/disputes/disputes_screen.dart';
import 'package:loboko/views/admin/disputes/dispute_details_screen.dart';

import 'package:loboko/views/admin/reports/reports_screen.dart';

import 'package:loboko/views/admin/settings/admin_profile_screen.dart';
import 'package:loboko/views/admin/settings/security_screen.dart';
import 'package:loboko/views/admin/settings/app_settings_screen.dart';

import '../views/admin/activity_logs/activity_logs_screen.dart';



// AUTH
import 'package:loboko/views/auth/choose_role/choose_role_screen.dart';

// CLIENT
import 'package:loboko/views/auth/client/login/login_client_screen.dart';

import 'package:loboko/views/auth/client/register/register_client_step1.dart';
import 'package:loboko/views/auth/client/register/register_client_step2.dart';
import 'package:loboko/views/auth/client/register/register_client_step3.dart';
import 'package:loboko/views/auth/client/register/register_client_success_screen.dart';

import 'package:loboko/views/auth/client/forgot_password/forgot_client_screen.dart';
import 'package:loboko/views/auth/client/forgot_password/reset_client_screen.dart';

// PRESTATAIRE
import 'package:loboko/views/auth/prestataire/login/login_prestataire_screen.dart';

import 'package:loboko/views/auth/prestataire/register/register_prestataire_step1.dart';
import 'package:loboko/views/auth/prestataire/register/register_prestataire_step2.dart';
import 'package:loboko/views/auth/prestataire/register/register_prestataire_step3.dart';
import 'package:loboko/views/auth/prestataire/register/register_prestataire_step4.dart';
import 'package:loboko/views/auth/prestataire/register/register_prestataire_step5.dart';
import 'package:loboko/views/auth/prestataire/register/otp_prestataire_screen.dart';

import 'package:loboko/views/auth/prestataire/forgot_password/forgot_prestataire_screen.dart';
import 'package:loboko/views/auth/prestataire/forgot_password/reset_prestataire_screen.dart';

// SPLASH & ONBOARDING
import '../views/splash/splash_screen.dart';
import '../views/onboarding/onboarding_screen.dart';

// CLIENT
// DASHBOARD
import 'package:loboko/views/client/dashboard/home_screen.dart';

// SEARCH
import 'package:loboko/views/client/search/search_screen.dart';

// SERVICES
import 'package:loboko/views/client/services/services_screen.dart';
import 'package:loboko/views/client/services/service_details_screen.dart';
import '../views/client/services/service_providers_screen.dart';

// RESERVATIONS
import 'package:loboko/views/client/reservations/reservation_screen.dart';
import 'package:loboko/views/client/reservations/choose_date_screen.dart';
import 'package:loboko/views/client/reservations/choose_time_screen.dart';
import 'package:loboko/views/client/reservations/reservation_success_screen.dart';
import 'package:loboko/views/client/reservations/tracking_screen.dart';
import 'package:loboko/views/client/reservations/validation_screen.dart';
import 'package:loboko/views/client/reservations/my_reservations_screen.dart';
import 'package:loboko/views/client/reservations/reservation_details_screen.dart';

// PAYMENTS
import 'package:loboko/views/client/payments/payment_screen.dart';
import 'package:loboko/views/client/payments/payment_method_screen.dart';
import 'package:loboko/views/client/payments/payment_success_screen.dart';

// MESSAGES
import 'package:loboko/views/client/messages/messages_screen.dart';
import 'package:loboko/views/client/messages/chat_screen.dart';

// NOTIFICATIONS
import 'package:loboko/views/client/notifications/notifications_screen.dart';

// PROFILE
import 'package:loboko/views/client/profile/profile_screen.dart';
import 'package:loboko/views/client/profile/edit_profile_screen.dart';
import 'package:loboko/views/client/profile/addresses_screen.dart';
import 'package:loboko/views/client/profile/favorites_screen.dart';
import 'package:loboko/views/client/profile/settings_screen.dart';

// REVIEWS
import 'package:loboko/views/client/reviews/review_screen.dart';
import 'package:loboko/views/client/reviews/provider_reviews_screen.dart';

// PRESTATIONS
import 'package:loboko/views/client/prestations/prestation_screen.dart';
import 'package:loboko/views/client/prestations/prestation_details_screen.dart';

//PRESTATAIRE

// DASHBOARD
import 'package:loboko/views/prestataire/dashboard/dashboard_prestataire_screen.dart';

//MISSION
import 'package:loboko/views/prestataire/missions/demandes_screen.dart';
import 'package:loboko/views/prestataire/missions/demande_details_screen.dart';
import 'package:loboko/views/prestataire/missions/mission_accepted_screen.dart';
import 'package:loboko/views/prestataire/missions/missions_screen.dart';
import 'package:loboko/views/prestataire/missions/mission_execution_screen.dart';
import 'package:loboko/views/prestataire/missions/mission_completed_screen.dart';


// MESSAGES PRESTATAIRE
import 'package:loboko/views/prestataire/messages/messages_prestataire_screen.dart';
import 'package:loboko/views/prestataire/messages/chat_prestataire_screen.dart';


// REVENUS PRESTATAIRE
import 'package:loboko/views/prestataire/revenus/revenus_screen.dart';
import 'package:loboko/views/prestataire/revenus/revenu_details_screen.dart';

//PROFIL PRESTATAIRE
import 'package:loboko/views/prestataire/profile/profil_prestataire_screen.dart';
import 'package:loboko/views/prestataire/profile/edit_profil_prestataire_screen.dart';
import 'package:loboko/views/prestataire/profile/disponibilite_screen.dart';
import 'package:loboko/views/prestataire/profile/services_screen.dart';
import 'package:loboko/views/prestataire/profile/tarifs_screen.dart';
import 'package:loboko/views/prestataire/profile/photos_screen.dart';
import 'package:loboko/views/prestataire/profile/avis_clients_screen.dart';
import 'package:loboko/views/prestataire/profile/parametres_screen.dart';


class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    // SPLASH
    "/splash": (context) => const SplashScreen(),

    // ONBOARDING
    "/onboarding": (context) => const OnboardingScreen(),

    // AUTH
    "/chooseRole": (context) => const ChooseRoleScreen(),

    "/loginClient": (context) => const LoginClientScreen(),
    "/loginPrestataire": (context) => const LoginPrestataireScreen(),
    "/registerClientStep1": (context) => const RegisterClientStep1(),
    "/registerClientStep2": (context) => const RegisterClientStep2(),
    "/registerClientStep3": (context) => const RegisterClientStep3(),
    '/registerClientSuccess': (context) => const RegisterClientSuccessScreen(),

    "/registerPrestataireStep1": (context) => const RegisterPrestataireStep1(),
    "/registerPrestataireStep2": (context) => const RegisterPrestataireStep2(),
    "/registerPrestataireStep3": (context) => const RegisterPrestataireStep3(),
    "/registerPrestataireStep4": (context) => const RegisterPrestataireStep4(),
    "/registerPrestataireStep5": (context) => const RegisterPrestataireStep5(),
    "/otpPrestataire": (context) => const OtpPrestataireScreen(),

    "/forgotPrestataire": (context) =>  ForgotPrestataireScreen(),
    "/resetPrestataire": (context) => const ResetPrestataireScreen(),

    "/forgotClient": (context) => const ForgotClientScreen(),
    "/resetClient": (context) => const ResetClientScreen(),

    //CLIENT
    // DASHBOARD
    "/home": (context) => const HomeScreen(),

// SEARCH
    "/search": (context) => const SearchScreen(),

// SERVICES
    "/services": (context) => const ServicesScreen(),
    "/serviceDetails": (context) => const ServiceDetailsScreen(),
    "/serviceProviders": (context) => const ServiceProvidersScreen(),

// RESERVATIONS
    "/reservation": (context) => const ReservationScreen(),
    "/chooseDate": (context) => const ChooseDateScreen(),
    "/chooseTime": (context) => const ChooseTimeScreen(),
    "/reservationSuccess": (context) => const ReservationSuccessScreen(),
    "/tracking": (context) => const TrackingScreen(),
    "/validation": (context) => const ValidationScreen(),
    "/myReservations": (context) => const MyReservationsScreen(),
    "/reservationDetails": (context) => const ReservationDetailsScreen(),

// PAYMENTS
    "/payment": (context) => const PaymentScreen(),
    "/paymentMethod": (context) => const PaymentMethodScreen(),
    "/paymentSuccess": (context) => const PaymentSuccessScreen(),

// MESSAGES
    "/messages": (context) => const MessagesScreen(),
    "/chat": (context) => const ChatScreen(
      providerName: "Prestataire",
    ),

// NOTIFICATIONS
    "/notifications": (context) => const NotificationsScreen(),

// PROFILE
    "/profile": (context) => const ProfileScreen(),
    "/editProfile": (context) => const EditProfileScreen(),
    "/addresses": (context) => const AddressesScreen(),
    "/favorites": (context) => const FavoritesScreen(),
    "/settings": (context) => const SettingsScreen(),

// REVIEWS
    "/review": (context) => const ReviewScreen(),
    "/providerReviews": (context) => const ProviderReviewsScreen(),

// PRESTATIONS
    "/prestations": (context) => const PrestationScreen(),
    "/prestationDetails": (context) => const PrestationDetailsScreen(),


    //PRESTATAIRES

    //DASHBOARD
    "/dashboardPrestataire": (context) => const DashboardPrestataireScreen(),


    //MISSION
    "/demandes": (context) => const DemandesScreen(),
    "/demandeDetails": (context) => const DemandeDetailsScreen(),
    "/missionAccepted": (context) => const MissionAcceptedScreen(),
    "/missions": (context) => const MissionsScreen(),
    "/missionExecution": (context) => const MissionExecutionScreen(),
    "/missionCompleted": (context) => const MissionCompletedScreen(),


    // MESSAGES PRESTATAIRE
    "/messagesPrestataire": (context) => const MessagesPrestataireScreen(),
    "/chatPrestataire": (context) => const ChatPrestataireScreen(),


    // REVENUS PRESTATAIRE
    "/revenus": (context) => const RevenusScreen(),
    "/revenuDetails": (context) => const RevenuDetailsScreen(),


    // PROFILE PRESTATAIRE
    "/profilPrestataire": (context) => const ProfilPrestataireScreen(),
    "/editProfilPrestataire": (context) => const EditProfilPrestataireScreen(),
    "/disponibilite": (context) => const DisponibiliteScreen(),
    "/servicesPrestataire": (context) => const ServicesPrestataireScreen(),
    "/tarifs": (context) => const TarifsScreen(),
    "/photos": (context) => const PhotosScreen(),
    "/avisClients": (context) => const AvisClientsScreen(),
    "/parametres": (context) => const ParametresScreen(),

    //ADMIN
    //LOGIN
    "/loginAdmin": (context) => const LoginAdminScreen(),

    //DASHBOARD
    "/adminDashboard": (context) => const AdminDashboardScreen(),

    //PRESTATAIRE
    "/pendingPrestataires": (context) => const PendingPrestatairesScreen(),
    "/validatedPrestataires": (context) => const ValidatedPrestatairesScreen(),
    "/rejectedPrestataires": (context) => const RejectedPrestatairesScreen(),
    "/prestataireDetails": (context) => const PrestataireDetailsScreen(),

    "/users": (context) => const UsersScreen(),
    "/clientDetails": (context) => const ClientDetailsScreen(),
    "/userPrestataireDetails": (context) => const UserPrestataireDetailsScreen(),

    "/disputes": (context) => const DisputesScreen(),
    "/disputeDetails": (context) => const DisputeDetailsScreen(),

    "/reports": (context) => const ReportsScreen(),

    "/adminProfile": (context) => const AdminProfileScreen(),
    "/security": (context) => const SecurityScreen(),
    "/appSettings": (context) => const AppSettingsScreen(),

    "/activityLogs": (context) => const ActivityLogsScreen(),
  };
}