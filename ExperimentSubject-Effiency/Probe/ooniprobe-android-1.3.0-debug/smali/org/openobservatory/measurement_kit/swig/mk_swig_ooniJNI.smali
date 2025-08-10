.class public Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;
.super Ljava/lang/Object;
.source "mk_swig_ooniJNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native OrchestrateAuth_auth_token(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Ljava/lang/String;
.end method

.method public static final native OrchestrateAuth_dump(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/swig/Error;
.end method

.method public static final native OrchestrateAuth_dumps(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Ljava/lang/String;
.end method

.method public static final native OrchestrateAuth_expiry_time(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Ljava/lang/String;
.end method

.method public static final native OrchestrateAuth_is_valid(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Z
.end method

.method public static final native OrchestrateAuth_load(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/swig/Error;
.end method

.method public static final native OrchestrateAuth_loads(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/swig/Error;
.end method

.method public static final native OrchestrateAuth_logged_in(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Z
.end method

.method public static final native OrchestrateAuth_make_password()Ljava/lang/String;
.end method

.method public static final native OrchestrateAuth_password(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Ljava/lang/String;
.end method

.method public static final native OrchestrateAuth_set_auth_token(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateAuth_set_expiry_time(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateAuth_set_logged_in(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Z)V
.end method

.method public static final native OrchestrateAuth_set_password(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateAuth_set_username(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateAuth_username(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_available_bandwidth(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_device_token(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_events_url(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_find_location(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/Object;)V
.end method

.method public static final native OrchestrateClient_geoip_asn_path(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_geoip_country_path(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_increase_verbosity(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)V
.end method

.method public static final native OrchestrateClient_language(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_network_type(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_platform(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_probe_asn(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_probe_cc(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_probe_family(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_register_probe(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public static final native OrchestrateClient_registry_url(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_set_available_bandwidth(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_device_token(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_events_url(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_geoip_asn_path(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_geoip_country_path(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_language(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_logfile(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_network_type(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_platform(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_probe_asn(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_probe_cc(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_probe_family(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_registry_url(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_software_name(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_software_version(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
.end method

.method public static final native OrchestrateClient_set_supported_tests(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static final native OrchestrateClient_set_verbosity(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;J)V
.end method

.method public static final native OrchestrateClient_software_name(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_software_version(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;
.end method

.method public static final native OrchestrateClient_supported_tests(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static final native OrchestrateClient_update(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/Object;)V
.end method

.method public static final native OrchestrateClient_use_logcat(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)V
.end method

.method public static final native delete_OrchestrateAuth(J)V
.end method

.method public static final native delete_OrchestrateClient(J)V
.end method

.method public static final native new_OrchestrateAuth()J
.end method

.method public static final native new_OrchestrateClient()J
.end method
