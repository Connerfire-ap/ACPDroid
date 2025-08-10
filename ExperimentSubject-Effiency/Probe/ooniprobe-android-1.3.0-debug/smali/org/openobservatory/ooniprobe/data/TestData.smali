.class public Lorg/openobservatory/ooniprobe/data/TestData;
.super Ljava/util/Observable;
.source "TestData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestData"

.field public static activity:Landroid/app/Activity;

.field public static availableTests:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static context:Landroid/content/Context;

.field public static finishedTests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lorg/openobservatory/ooniprobe/data/TestData;

.field public static runningTests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method private static boolToString(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method public static configureTest(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "currentTest"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ctx",
            "currentTest"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->json_file:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "outputPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->log_file:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "logPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/GeoIPASNum.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "geoip_asn":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/GeoIP.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "geoip_country":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 68
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "include_ip"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 69
    .local v5, "include_ip":Ljava/lang/Boolean;
    const-string v6, "include_asn"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 70
    .local v6, "include_asn":Ljava/lang/Boolean;
    const-string v8, "include_cc"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 71
    .local v8, "include_cc":Ljava/lang/Boolean;
    const-string v9, "upload_results"

    invoke-interface {v4, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 73
    .local v9, "upload_results":Ljava/lang/Boolean;
    iget-object v10, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    invoke-interface {v10}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->use_logcat()Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 74
    iget-object v10, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    invoke-interface {v10, v0}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_output_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 75
    iget-object v10, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    invoke-interface {v10, v1}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_error_filepath(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 76
    iget-object v10, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    const-wide/16 v11, 0x1

    invoke-interface {v10, v11, v12}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_verbosity(J)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 77
    iget-object v10, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    const-string v11, "geoip_country_path"

    invoke-interface {v10, v11, v3}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 78
    iget-object v10, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    const-string v11, "geoip_asn_path"

    invoke-interface {v10, v11, v2}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 79
    iget-object v10, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    invoke-static {v5}, Lorg/openobservatory/ooniprobe/data/TestData;->boolToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "save_real_probe_ip"

    invoke-interface {v10, v12, v11}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 80
    iget-object v10, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    invoke-static {v6}, Lorg/openobservatory/ooniprobe/data/TestData;->boolToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "save_real_probe_asn"

    invoke-interface {v10, v12, v11}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 81
    iget-object v10, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    invoke-static {v8}, Lorg/openobservatory/ooniprobe/data/TestData;->boolToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "save_real_probe_cc"

    invoke-interface {v10, v12, v11}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 82
    iget-object v10, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    xor-int/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lorg/openobservatory/ooniprobe/data/TestData;->boolToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "no_collector"

    invoke-interface {v10, v11, v7}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 83
    iget-object v7, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    const-string v10, "software_name"

    const-string v11, "ooniprobe-android"

    invoke-interface {v7, v10, v11}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 84
    iget-object v7, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    invoke-static {}, Lorg/openobservatory/ooniprobe/utils/VersionUtils;->get_software_version()Ljava/lang/String;

    move-result-object v10

    const-string v11, "software_version"

    invoke-interface {v7, v11, v10}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 85
    iget-object v7, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    new-instance v10, Lorg/openobservatory/ooniprobe/data/TestData$1;

    invoke-direct {v10, p1}, Lorg/openobservatory/ooniprobe/data/TestData$1;-><init>(Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    invoke-interface {v7, v10}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->on_progress(Lorg/openobservatory/measurement_kit/nettests/ProgressCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 99
    return-object p1
.end method

.method public static doNetworkMeasurements(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "currentTest"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ctx",
            "currentTest"
        }
    .end annotation

    .line 103
    invoke-static {p0, p1}, Lorg/openobservatory/ooniprobe/data/TestData;->configureTest(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 104
    invoke-static {p0, p1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->addTest(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 105
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->runningTests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/data/TestData;->notifyObservers()V

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doNetworkMeasurements "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestData"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Lorg/openobservatory/ooniprobe/data/TestData$2;

    invoke-direct {v0, p1, p0}, Lorg/openobservatory/ooniprobe/data/TestData$2;-><init>(Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;Landroid/content/Context;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v4/os/AsyncTaskCompat;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 228
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "a"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "c",
            "a"
        }
    .end annotation

    .line 38
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->instance:Lorg/openobservatory/ooniprobe/data/TestData;

    if-nez v0, :cond_0

    .line 39
    sput-object p0, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    .line 40
    sput-object p1, Lorg/openobservatory/ooniprobe/data/TestData;->activity:Landroid/app/Activity;

    .line 41
    new-instance v0, Lorg/openobservatory/ooniprobe/data/TestData;

    invoke-direct {v0}, Lorg/openobservatory/ooniprobe/data/TestData;-><init>()V

    sput-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->instance:Lorg/openobservatory/ooniprobe/data/TestData;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->runningTests:Ljava/util/ArrayList;

    .line 43
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTests(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->finishedTests:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    .line 45
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "web_connectivity"

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "http_invalid_request_line"

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "http_header_field_manipulation"

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ndt"

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "dash"

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "whatsapp"

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "telegram"

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "facebook_messenger"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 55
    sput-object p1, Lorg/openobservatory/ooniprobe/data/TestData;->activity:Landroid/app/Activity;

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->instance:Lorg/openobservatory/ooniprobe/data/TestData;

    return-object v0
.end method

.method public static setAnomalyFacebookMessenger(Ljava/lang/String;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 9
    .param p0, "entry"    # Ljava/lang/String;
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "test"
        }
    .end annotation

    .line 431
    iget-boolean v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 432
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setEntry(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 433
    iput-boolean v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 436
    :cond_0
    const/4 v0, 0x0

    .line 437
    .local v0, "anomaly":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 438
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "facebook_tcp_blocking"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "facebook_dns_blocking"

    aput-object v4, v3, v1

    move-object v1, v3

    .line 440
    .local v1, "keys":[Ljava/lang/String;
    array-length v3, v1

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v4, v1, v5

    .line 442
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 443
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 444
    .local v7, "boolvalue":Ljava/lang/Boolean;
    if-nez v6, :cond_1

    .line 445
    const/4 v0, 0x1

    goto :goto_1

    .line 446
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 447
    const/4 v0, 0x2

    .line 440
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "boolvalue":Ljava/lang/Boolean;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 449
    :cond_3
    iget v3, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    if-ge v3, v0, :cond_4

    .line 450
    iput v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 451
    sget-object v3, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    iget-wide v4, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-static {v3, v4, v5, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setAnomaly(Landroid/content/Context;JI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v0    # "anomaly":I
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :cond_4
    goto :goto_2

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestData"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public static setAnomalyHhfm(Ljava/lang/String;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 10
    .param p0, "entry"    # Ljava/lang/String;
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "test"
        }
    .end annotation

    .line 290
    iget-boolean v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 291
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setEntry(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 292
    iput-boolean v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 296
    .local v0, "anomaly":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 297
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "test_keys"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 298
    .local v3, "test_keys":Lorg/json/JSONObject;
    const-string v4, "failure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 299
    .local v4, "failure":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 300
    const/4 v0, 0x1

    goto :goto_1

    .line 302
    :cond_1
    const-string v5, "tampering"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 303
    .local v5, "tampering":Lorg/json/JSONObject;
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "header_field_name"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "header_field_number"

    aput-object v7, v6, v1

    const/4 v1, 0x2

    const-string v7, "header_field_value"

    aput-object v7, v6, v1

    const/4 v1, 0x3

    const-string v7, "header_name_capitalization"

    aput-object v7, v6, v1

    const/4 v1, 0x4

    const-string v7, "request_line_capitalization"

    aput-object v7, v6, v1

    const/4 v1, 0x5

    const-string v7, "total"

    aput-object v7, v6, v1

    move-object v1, v6

    .line 309
    .local v1, "keys":[Ljava/lang/String;
    array-length v6, v1

    :goto_0
    if-ge v8, v6, :cond_3

    aget-object v7, v1, v8

    .line 311
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 312
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 313
    const/4 v0, 0x2

    .line 309
    .end local v7    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v5    # "tampering":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    iget v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    if-ge v1, v0, :cond_4

    .line 317
    iput v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 318
    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    iget-wide v5, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-static {v1, v5, v6, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setAnomaly(Landroid/content/Context;JI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0    # "anomaly":I
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "test_keys":Lorg/json/JSONObject;
    .end local v4    # "failure":Ljava/lang/Object;
    :cond_4
    goto :goto_2

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestData"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public static setAnomalyHirl(Ljava/lang/String;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 7
    .param p0, "entry"    # Ljava/lang/String;
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "test"
        }
    .end annotation

    .line 261
    const-string v0, "tampering"

    iget-boolean v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 262
    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setEntry(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 263
    iput-boolean v2, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 266
    :cond_0
    const/4 v1, 0x0

    .line 267
    .local v1, "anomaly":I
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "test_keys"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 269
    .local v4, "test_keys":Lorg/json/JSONObject;
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 270
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 271
    .local v0, "tampering":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 272
    const/4 v1, 0x1

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v2, :cond_2

    .line 274
    const/4 v1, 0x2

    .line 276
    .end local v0    # "tampering":Ljava/lang/Boolean;
    :cond_2
    :goto_0
    iget v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    if-ge v0, v1, :cond_3

    .line 277
    iput v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 278
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    iget-wide v5, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-static {v0, v5, v6, v1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setAnomaly(Landroid/content/Context;JI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1    # "anomaly":I
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "test_keys":Lorg/json/JSONObject;
    :cond_3
    goto :goto_1

    .line 280
    :catch_0
    move-exception v0

    .line 282
    :goto_1
    return-void
.end method

.method public static setAnomalyNdt(Ljava/lang/String;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 6
    .param p0, "entry"    # Ljava/lang/String;
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "test"
        }
    .end annotation

    .line 330
    const-string v0, "failure"

    iget-boolean v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    if-nez v1, :cond_0

    .line 331
    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setEntry(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 332
    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 335
    :cond_0
    const/4 v1, 0x0

    .line 336
    .local v1, "anomaly":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "test_keys"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 338
    .local v3, "test_keys":Lorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 339
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 340
    .local v0, "failure":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 341
    const/4 v1, 0x1

    .line 343
    .end local v0    # "failure":Ljava/lang/Object;
    :cond_1
    iget v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    if-ge v0, v1, :cond_2

    .line 344
    iput v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 345
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    iget-wide v4, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-static {v0, v4, v5, v1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setAnomaly(Landroid/content/Context;JI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v1    # "anomaly":I
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "test_keys":Lorg/json/JSONObject;
    :cond_2
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestData"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public static setAnomalyTelegram(Ljava/lang/String;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 10
    .param p0, "entry"    # Ljava/lang/String;
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "test"
        }
    .end annotation

    .line 390
    const-string v0, "telegram_web_status"

    iget-boolean v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 391
    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setEntry(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 392
    iput-boolean v2, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 395
    :cond_0
    const/4 v1, 0x0

    .line 396
    .local v1, "anomaly":I
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 397
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "telegram_http_blocking"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "telegram_tcp_blocking"

    aput-object v5, v4, v2

    move-object v2, v4

    .line 399
    .local v2, "keys":[Ljava/lang/String;
    array-length v4, v2

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v5, v2, v6

    .line 401
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 402
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 403
    .local v8, "boolvalue":Ljava/lang/Boolean;
    if-nez v7, :cond_1

    .line 404
    const/4 v1, 0x1

    goto :goto_1

    .line 405
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 406
    const/4 v1, 0x2

    .line 399
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "boolvalue":Ljava/lang/Boolean;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 408
    :cond_3
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 409
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "telegram_web_status":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 411
    const/4 v1, 0x1

    goto :goto_2

    .line 412
    :cond_4
    const-string v4, "blocked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 413
    const/4 v1, 0x2

    .line 415
    .end local v0    # "telegram_web_status":Ljava/lang/String;
    :cond_5
    :goto_2
    iget v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    if-ge v0, v1, :cond_6

    .line 416
    iput v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 417
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    iget-wide v4, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-static {v0, v4, v5, v1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setAnomaly(Landroid/content/Context;JI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v1    # "anomaly":I
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    :cond_6
    goto :goto_3

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestData"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method

.method public static setAnomalyWc(Ljava/lang/String;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 7
    .param p0, "entry"    # Ljava/lang/String;
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "test"
        }
    .end annotation

    .line 232
    iget-boolean v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    if-nez v0, :cond_0

    .line 233
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setEntry(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 237
    :cond_0
    const/4 v0, 0x0

    .line 238
    .local v0, "anomaly":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "test_keys"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 240
    .local v2, "test_keys":Lorg/json/JSONObject;
    const-string v3, "blocking"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 241
    .local v3, "blocking":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 242
    const/4 v0, 0x2

    goto :goto_0

    .line 243
    :cond_1
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 244
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    :cond_2
    const/4 v0, 0x1

    .line 247
    :goto_0
    iget v4, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    if-ge v4, v0, :cond_3

    .line 248
    iput v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 249
    sget-object v4, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    iget-wide v5, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-static {v4, v5, v6, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setAnomaly(Landroid/content/Context;JI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0    # "anomaly":I
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "test_keys":Lorg/json/JSONObject;
    .end local v3    # "blocking":Ljava/lang/Object;
    :cond_3
    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 253
    :goto_1
    return-void
.end method

.method public static setAnomalyWhatsapp(Ljava/lang/String;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 8
    .param p0, "entry"    # Ljava/lang/String;
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "test"
        }
    .end annotation

    .line 357
    iget-boolean v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 358
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setEntry(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 359
    iput-boolean v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 362
    :cond_0
    const/4 v0, 0x0

    .line 363
    .local v0, "anomaly":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 364
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "whatsapp_endpoints_status"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "whatsapp_web_status"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "registration_server_status"

    aput-object v4, v3, v1

    move-object v1, v3

    .line 367
    .local v1, "keys":[Ljava/lang/String;
    array-length v3, v1

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v4, v1, v5

    .line 369
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 371
    const/4 v0, 0x1

    goto :goto_1

    .line 372
    :cond_1
    const-string v7, "blocked"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 373
    const/4 v0, 0x2

    .line 367
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 375
    :cond_3
    iget v3, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    if-ge v3, v0, :cond_4

    .line 376
    iput v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 377
    sget-object v3, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    iget-wide v4, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-static {v3, v4, v5, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setAnomaly(Landroid/content/Context;JI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0    # "anomaly":I
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :cond_4
    goto :goto_2

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestData"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method


# virtual methods
.method public getTestWithName(Ljava/lang/String;)Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 467
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    sget-object v2, Lorg/openobservatory/ooniprobe/data/TestData;->activity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->runningTests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 468
    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    sget-object v2, Lorg/openobservatory/ooniprobe/data/TestData;->activity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->runningTests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 469
    .local v1, "current":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-object v2, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 467
    .end local v1    # "current":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/data/TestData;->setChanged()V

    .line 463
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public removeTest(Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 7
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 475
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->finishedTests:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->finishedTests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 477
    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->finishedTests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 478
    .local v1, "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-wide v2, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    iget-wide v4, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 479
    sget-object v2, Lorg/openobservatory/ooniprobe/data/TestData;->finishedTests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 480
    goto :goto_1

    .line 476
    .end local v1    # "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method
