.class public Lorg/openobservatory/ooniprobe/utils/NotificationService;
.super Ljava/lang/Object;
.source "NotificationService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationService"

.field static available_bandwidth:Ljava/lang/String;

.field public static context:Landroid/content/Context;

.field static device_token:Ljava/lang/String;

.field static geoip_asn_path:Ljava/lang/String;

.field static geoip_country_path:Ljava/lang/String;

.field private static instance:Lorg/openobservatory/ooniprobe/utils/NotificationService;

.field static language:Ljava/lang/String;

.field static network_type:Ljava/lang/String;

.field static platform:Ljava/lang/String;

.field static software_name:Ljava/lang/String;

.field static software_version:Ljava/lang/String;

.field static supported_tests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/openobservatory/ooniprobe/utils/NotificationService;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "c"
        }
    .end annotation

    .line 44
    sget-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->instance:Lorg/openobservatory/ooniprobe/utils/NotificationService;

    if-nez v0, :cond_1

    .line 45
    sput-object p0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;

    invoke-direct {v0}, Lorg/openobservatory/ooniprobe/utils/NotificationService;-><init>()V

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->instance:Lorg/openobservatory/ooniprobe/utils/NotificationService;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/GeoIPASNum.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->geoip_asn_path:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/GeoIP.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->geoip_country_path:Ljava/lang/String;

    .line 49
    const-string v0, "android"

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->platform:Ljava/lang/String;

    .line 50
    const-string v0, "ooniprobe-android"

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->software_name:Ljava/lang/String;

    .line 51
    invoke-static {}, Lorg/openobservatory/ooniprobe/utils/VersionUtils;->get_software_version()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->software_version:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    sget-object v2, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->supported_tests:Ljava/util/List;

    .line 53
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/utils/NotificationService;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->network_type:Ljava/lang/String;

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->language:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->device_token:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_0
    sput-object v1, Lorg/openobservatory/ooniprobe/utils/NotificationService;->device_token:Ljava/lang/String;

    .line 60
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, "mIFNetwork":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lorg/openobservatory/ooniprobe/utils/ConnectionStateMonitor;

    invoke-direct {v1}, Lorg/openobservatory/ooniprobe/utils/ConnectionStateMonitor;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    .end local v0    # "mIFNetwork":Landroid/content/IntentFilter;
    :cond_1
    sget-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->instance:Lorg/openobservatory/ooniprobe/utils/NotificationService;

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "networkType":Ljava/lang/String;
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 171
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 172
    .local v2, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 174
    const-string v0, "wifi"

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_2

    .line 176
    const-string v0, "mobile"

    goto :goto_0

    .line 180
    :cond_1
    const-string v0, "no_internet"

    .line 183
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public sendRegistrationToServer()V
    .locals 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/openobservatory/ooniprobe/utils/NotificationService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/orchestration_secret.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "auth_secret_file":Ljava/lang/String;
    sget-object v1, Lorg/openobservatory/ooniprobe/utils/NotificationService;->device_token:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance v1, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;

    invoke-direct {v1}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;-><init>()V

    .line 96
    .local v1, "client":Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;
    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_verbosity(J)V

    .line 97
    invoke-virtual {v1}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->use_logcat()V

    .line 98
    sget-object v2, Lorg/openobservatory/ooniprobe/utils/NotificationService;->geoip_country_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_geoip_country_path(Ljava/lang/String;)V

    .line 99
    sget-object v2, Lorg/openobservatory/ooniprobe/utils/NotificationService;->geoip_asn_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_geoip_asn_path(Ljava/lang/String;)V

    .line 100
    sget-object v2, Lorg/openobservatory/ooniprobe/utils/NotificationService;->platform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_platform(Ljava/lang/String;)V

    .line 101
    sget-object v2, Lorg/openobservatory/ooniprobe/utils/NotificationService;->software_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_software_name(Ljava/lang/String;)V

    .line 102
    sget-object v2, Lorg/openobservatory/ooniprobe/utils/NotificationService;->software_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_software_version(Ljava/lang/String;)V

    .line 103
    sget-object v2, Lorg/openobservatory/ooniprobe/utils/NotificationService;->supported_tests:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_supported_tests(Ljava/util/List;)V

    .line 104
    sget-object v2, Lorg/openobservatory/ooniprobe/utils/NotificationService;->network_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_network_type(Ljava/lang/String;)V

    .line 105
    sget-object v2, Lorg/openobservatory/ooniprobe/utils/NotificationService;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_language(Ljava/lang/String;)V

    .line 106
    sget-object v2, Lorg/openobservatory/ooniprobe/utils/NotificationService;->device_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_device_token(Ljava/lang/String;)V

    .line 107
    const-string v2, "https://registry.proteus.ooni.io"

    invoke-virtual {v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_registry_url(Ljava/lang/String;)V

    .line 110
    new-instance v2, Lorg/openobservatory/ooniprobe/utils/NotificationService$1;

    invoke-direct {v2, p0, v1, v0}, Lorg/openobservatory/ooniprobe/utils/NotificationService$1;-><init>(Lorg/openobservatory/ooniprobe/utils/NotificationService;Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->find_location(Lorg/openobservatory/measurement_kit/swig/OrchestrateFindLocationCallback;)V

    .line 165
    return-void
.end method

.method public setDevice_token(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 68
    sput-object p1, Lorg/openobservatory/ooniprobe/utils/NotificationService;->device_token:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public updateNetworkType(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 187
    invoke-static {p1}, Lorg/openobservatory/ooniprobe/utils/NotificationService;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/NotificationService;->network_type:Ljava/lang/String;

    .line 188
    const-string v1, "no_internet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/utils/NotificationService;->sendRegistrationToServer()V

    .line 190
    :cond_0
    return-void
.end method
