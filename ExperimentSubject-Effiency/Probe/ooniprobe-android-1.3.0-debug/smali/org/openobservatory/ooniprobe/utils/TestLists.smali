.class public Lorg/openobservatory/ooniprobe/utils/TestLists;
.super Ljava/lang/Object;
.source "TestLists.java"


# static fields
.field public static context:Landroid/content/Context;

.field private static instance:Lorg/openobservatory/ooniprobe/utils/TestLists;

.field public static probe_asn:Ljava/lang/String;

.field public static probe_cc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/openobservatory/ooniprobe/utils/TestLists;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 29
    sget-object v0, Lorg/openobservatory/ooniprobe/utils/TestLists;->instance:Lorg/openobservatory/ooniprobe/utils/TestLists;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lorg/openobservatory/ooniprobe/utils/TestLists;

    invoke-direct {v0}, Lorg/openobservatory/ooniprobe/utils/TestLists;-><init>()V

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/TestLists;->instance:Lorg/openobservatory/ooniprobe/utils/TestLists;

    .line 31
    sput-object p0, Lorg/openobservatory/ooniprobe/utils/TestLists;->context:Landroid/content/Context;

    .line 32
    const-string v0, ""

    sput-object v0, Lorg/openobservatory/ooniprobe/utils/TestLists;->probe_cc:Ljava/lang/String;

    .line 33
    sput-object v0, Lorg/openobservatory/ooniprobe/utils/TestLists;->probe_asn:Ljava/lang/String;

    .line 34
    invoke-static {}, Lorg/openobservatory/ooniprobe/utils/TestLists;->updateCC_async()V

    .line 36
    :cond_0
    sget-object v0, Lorg/openobservatory/ooniprobe/utils/TestLists;->instance:Lorg/openobservatory/ooniprobe/utils/TestLists;

    return-object v0
.end method

.method private static getURLsforAsset(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 71
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 72
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 73
    .local v2, "rows":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v2    # "rows":[Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getUrls()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    const-string v0, "global"

    invoke-static {v0}, Lorg/openobservatory/ooniprobe/utils/TestLists;->readCVSFromAssetFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/openobservatory/ooniprobe/utils/TestLists;->getURLsforAsset(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    .local v0, "global_urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lorg/openobservatory/ooniprobe/utils/TestLists;->probe_cc:Ljava/lang/String;

    invoke-static {v1}, Lorg/openobservatory/ooniprobe/utils/TestLists;->readCVSFromAssetFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lorg/openobservatory/ooniprobe/utils/TestLists;->getURLsforAsset(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 42
    .local v1, "local_urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_0
    return-object v0
.end method

.method private static readCVSFromAssetFolder(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "country"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "csvLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 52
    .local v1, "content":[Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/openobservatory/ooniprobe/utils/TestLists;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "test_lists/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 53
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    .local v3, "br":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 55
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_0

    .line 56
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    goto :goto_1

    .line 60
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0
.end method

.method public static updateCC_async()V
    .locals 5

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/openobservatory/ooniprobe/utils/TestLists;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/GeoIPASNum.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "geoip_asn_path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/openobservatory/ooniprobe/utils/TestLists;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/GeoIP.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "geoip_country_path":Ljava/lang/String;
    new-instance v2, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;

    invoke-direct {v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;-><init>()V

    .line 83
    .local v2, "client":Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;
    const-wide/16 v3, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_verbosity(J)V

    .line 84
    invoke-virtual {v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->use_logcat()V

    .line 85
    invoke-virtual {v2, v1}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_geoip_country_path(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2, v0}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_geoip_asn_path(Ljava/lang/String;)V

    .line 87
    new-instance v3, Lorg/openobservatory/ooniprobe/utils/TestLists$1;

    invoke-direct {v3, v2}, Lorg/openobservatory/ooniprobe/utils/TestLists$1;-><init>(Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;)V

    invoke-virtual {v2, v3}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->find_location(Lorg/openobservatory/measurement_kit/swig/OrchestrateFindLocationCallback;)V

    .line 105
    return-void
.end method
