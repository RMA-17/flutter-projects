import 'package:supabase/supabase.dart';

class SupabaseCredentials {
  // ignore: constant_identifier_names
  static const String APIKEY =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZkcnZ4aWZ2ZGRseGpkbGtia2lqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTU4ODA4MDEsImV4cCI6MTk3MTQ1NjgwMX0.6H58pRP1iB-sPZiODNsHeSk1lTcPDqT61RaTmNykH7A';
  // ignore: constant_identifier_names
  static const String APIURL = "https://fdrvxifvddlxjdlkbkij.supabase.co";
  static SupabaseClient supabaseClient = SupabaseClient(APIURL, APIKEY);
}
