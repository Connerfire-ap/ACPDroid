.class public Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
.super Ljava/lang/Object;
.source "NetworkMeasurement.java"


# instance fields
.field public anomaly:I

.field public entry:Z

.field public final json_file:Ljava/lang/String;

.field public final log_file:Ljava/lang/String;

.field public progress:I

.field public running:Z

.field public transient test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

.field public testName:Ljava/lang/String;

.field public test_id:J

.field public viewed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "name"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 26
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    .line 27
    iput v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->progress:I

    .line 31
    iput-boolean v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->running:Z

    .line 32
    iput-boolean v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->viewed:Z

    .line 33
    iput v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 37
    iput-object p2, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/test-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->log_file:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->json_file:Ljava/lang/String;

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->running:Z

    .line 42
    iput-boolean v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->viewed:Z

    .line 43
    iput v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 44
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "http_invalid_request_line"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/HttpInvalidRequestLineTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/HttpInvalidRequestLineTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto/16 :goto_1

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "http_header_field_manipulation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/HttpHeaderFieldManipulationTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/HttpHeaderFieldManipulationTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto/16 :goto_1

    .line 48
    :cond_1
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "web_connectivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 49
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 50
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "max_runtime"

    const-string v2, "90"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "max_runtime":Ljava/lang/String;
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    invoke-interface {v3, v1, v2}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->set_options(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 53
    invoke-static {p1}, Lorg/openobservatory/ooniprobe/utils/TestLists;->getInstance(Landroid/content/Context;)Lorg/openobservatory/ooniprobe/utils/TestLists;

    invoke-static {}, Lorg/openobservatory/ooniprobe/utils/TestLists;->getUrls()Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    .local v1, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 55
    iget-object v4, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->add_input(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v3    # "i":I
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 57
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "max_runtime":Ljava/lang/String;
    goto :goto_1

    .line 58
    :cond_3
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "ndt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 59
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto :goto_1

    .line 60
    :cond_4
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "dash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 61
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/DashTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/DashTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto :goto_1

    .line 62
    :cond_5
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "whatsapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 63
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/WhatsappTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/WhatsappTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto :goto_1

    .line 64
    :cond_6
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "telegram"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 65
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/TelegramTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/TelegramTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto :goto_1

    .line 66
    :cond_7
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "facebook_messenger"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 67
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/FacebookMessengerTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/FacebookMessengerTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 68
    :cond_8
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "name",
            "urls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p3, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 26
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    .line 27
    iput v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->progress:I

    .line 31
    iput-boolean v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->running:Z

    .line 32
    iput-boolean v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->viewed:Z

    .line 33
    iput v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 72
    iput-object p2, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/test-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->log_file:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->json_file:Ljava/lang/String;

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->running:Z

    .line 77
    iput-boolean v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->viewed:Z

    .line 78
    iput v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 79
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "http_invalid_request_line"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/HttpInvalidRequestLineTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/HttpInvalidRequestLineTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto/16 :goto_1

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "http_header_field_manipulation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/HttpHeaderFieldManipulationTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/HttpHeaderFieldManipulationTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto/16 :goto_1

    .line 83
    :cond_1
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "web_connectivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 84
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 86
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->add_input(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    goto :goto_1

    .line 88
    :cond_3
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "ndt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 89
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/NdtTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/NdtTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto :goto_1

    .line 90
    :cond_4
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "dash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 91
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/DashTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/DashTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto :goto_1

    .line 92
    :cond_5
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "whatsapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 93
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/WhatsappTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/WhatsappTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto :goto_1

    .line 94
    :cond_6
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "telegram"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 95
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/TelegramTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/TelegramTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    goto :goto_1

    .line 96
    :cond_7
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v1, "facebook_messenger"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 97
    new-instance v0, Lorg/openobservatory/measurement_kit/nettests/FacebookMessengerTest;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/nettests/FacebookMessengerTest;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    .line 98
    :cond_8
    :goto_1
    return-void
.end method

.method public static getTestDesc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "name"
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "whatsapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "facebook_messenger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "dash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "ndt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "http_header_field_manipulation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "web_connectivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "telegram"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "http_invalid_request_line"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 291
    const-string v0, ""

    return-object v0

    .line 288
    :pswitch_0
    const v0, 0x7f0e003d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :pswitch_1
    const v0, 0x7f0e008e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 284
    :pswitch_2
    const v0, 0x7f0e00a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_3
    const v0, 0x7f0e0035

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :pswitch_4
    const v0, 0x7f0e0064

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 278
    :pswitch_5
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :pswitch_6
    const v0, 0x7f0e004e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :pswitch_7
    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a466fbd -> :sswitch_7
        -0x511716ff -> :sswitch_6
        -0x4576ef3e -> :sswitch_5
        -0x33cb743 -> :sswitch_4
        0x1a97e -> :sswitch_3
        0x2eef92 -> :sswitch_2
        0x567310da -> :sswitch_1
        0x73526992 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTestDescr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "name"
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "whatsapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "facebook_messenger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_2
    const-string v0, "ndt_test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "dash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "ndt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "http_header_field_manipulation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "web_connectivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v0, "telegram"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "http_invalid_request_line"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f0e0063

    packed-switch v0, :pswitch_data_0

    .line 151
    const-string v0, ""

    return-object v0

    .line 149
    :pswitch_0
    const v0, 0x7f0e003c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :pswitch_1
    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :pswitch_2
    const v0, 0x7f0e009f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :pswitch_3
    const v0, 0x7f0e0034

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :pswitch_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :pswitch_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :pswitch_6
    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :pswitch_7
    const v0, 0x7f0e004d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :pswitch_8
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a466fbd -> :sswitch_8
        -0x511716ff -> :sswitch_7
        -0x4576ef3e -> :sswitch_6
        -0x33cb743 -> :sswitch_5
        0x1a97e -> :sswitch_4
        0x2eef92 -> :sswitch_3
        0x181392b3 -> :sswitch_2
        0x567310da -> :sswitch_1
        0x73526992 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTestImage(Ljava/lang/String;I)I
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "anomaly"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "anomaly"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "whatsapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "facebook_messenger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_2
    const-string v0, "ndt_test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "dash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "ndt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "http_header_field_manipulation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "web_connectivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v0, "telegram"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "http_invalid_request_line"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v3, 0x7f07008b

    const v4, 0x7f07008a

    const v5, 0x7f070088

    packed-switch v0, :pswitch_data_0

    .line 221
    return v1

    .line 214
    :pswitch_0
    if-nez p1, :cond_1

    .line 215
    const v0, 0x7f07006b

    return v0

    .line 216
    :cond_1
    if-ne p1, v2, :cond_2

    .line 217
    const v0, 0x7f07006e

    return v0

    .line 219
    :cond_2
    const v0, 0x7f07006d

    return v0

    .line 207
    :pswitch_1
    if-nez p1, :cond_3

    .line 208
    const v0, 0x7f0700a2

    return v0

    .line 209
    :cond_3
    if-ne p1, v2, :cond_4

    .line 210
    const v0, 0x7f0700a5

    return v0

    .line 212
    :cond_4
    const v0, 0x7f0700a4

    return v0

    .line 200
    :pswitch_2
    if-nez p1, :cond_5

    .line 201
    const v0, 0x7f0700ae

    return v0

    .line 202
    :cond_5
    if-ne p1, v2, :cond_6

    .line 203
    const v0, 0x7f0700b1

    return v0

    .line 205
    :cond_6
    const v0, 0x7f0700b0

    return v0

    .line 193
    :pswitch_3
    if-nez p1, :cond_7

    .line 194
    const v0, 0x7f07005f

    return v0

    .line 195
    :cond_7
    if-ne p1, v2, :cond_8

    .line 196
    const v0, 0x7f070062

    return v0

    .line 198
    :cond_8
    const v0, 0x7f070061

    return v0

    .line 186
    :pswitch_4
    if-nez p1, :cond_9

    .line 187
    return v5

    .line 188
    :cond_9
    if-ne p1, v2, :cond_a

    .line 189
    return v3

    .line 191
    :cond_a
    return v4

    .line 179
    :pswitch_5
    if-nez p1, :cond_b

    .line 180
    return v5

    .line 181
    :cond_b
    if-ne p1, v2, :cond_c

    .line 182
    return v3

    .line 184
    :cond_c
    return v4

    .line 172
    :pswitch_6
    if-nez p1, :cond_d

    .line 173
    const v0, 0x7f070070

    return v0

    .line 174
    :cond_d
    if-ne p1, v2, :cond_e

    .line 175
    const v0, 0x7f070073

    return v0

    .line 177
    :cond_e
    const v0, 0x7f070072

    return v0

    .line 165
    :pswitch_7
    if-nez p1, :cond_f

    .line 166
    const v0, 0x7f070074

    return v0

    .line 167
    :cond_f
    if-ne p1, v2, :cond_10

    .line 168
    const v0, 0x7f070077

    return v0

    .line 170
    :cond_10
    const v0, 0x7f070076

    return v0

    .line 158
    :pswitch_8
    if-nez p1, :cond_11

    .line 159
    const v0, 0x7f0700aa

    return v0

    .line 160
    :cond_11
    if-ne p1, v2, :cond_12

    .line 161
    const v0, 0x7f0700ad

    return v0

    .line 163
    :cond_12
    const v0, 0x7f0700ac

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a466fbd -> :sswitch_8
        -0x511716ff -> :sswitch_7
        -0x4576ef3e -> :sswitch_6
        -0x33cb743 -> :sswitch_5
        0x1a97e -> :sswitch_4
        0x2eef92 -> :sswitch_3
        0x181392b3 -> :sswitch_2
        0x567310da -> :sswitch_1
        0x73526992 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTestImageBig(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "whatsapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "facebook_messenger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "dash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "ndt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "http_header_field_manipulation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "web_connectivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "telegram"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "http_invalid_request_line"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 244
    return v1

    .line 242
    :pswitch_0
    const v0, 0x7f07006c

    return v0

    .line 240
    :pswitch_1
    const v0, 0x7f0700a3

    return v0

    .line 238
    :pswitch_2
    const v0, 0x7f0700af

    return v0

    .line 236
    :pswitch_3
    const v0, 0x7f070060

    return v0

    .line 234
    :pswitch_4
    const v0, 0x7f070089

    return v0

    .line 232
    :pswitch_5
    const v0, 0x7f070071

    return v0

    .line 230
    :pswitch_6
    const v0, 0x7f070075

    return v0

    .line 228
    :pswitch_7
    const v0, 0x7f0700ab

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5a466fbd -> :sswitch_7
        -0x511716ff -> :sswitch_6
        -0x4576ef3e -> :sswitch_5
        -0x33cb743 -> :sswitch_4
        0x1a97e -> :sswitch_3
        0x2eef92 -> :sswitch_2
        0x567310da -> :sswitch_1
        0x73526992 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTestName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "name"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "whatsapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "facebook_messenger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_2
    const-string v0, "ndt_test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "dns_injection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "dash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "ndt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "http_header_field_manipulation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "web_connectivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "telegram"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v0, "http_invalid_request_line"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_a
    const-string v0, "tcp_connect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f0e0062

    packed-switch v0, :pswitch_data_0

    .line 126
    const-string v0, ""

    return-object v0

    .line 124
    :pswitch_0
    const v0, 0x7f0e003b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :pswitch_1
    const v0, 0x7f0e008c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :pswitch_2
    const v0, 0x7f0e009e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :pswitch_3
    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :pswitch_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :pswitch_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :pswitch_6
    const v0, 0x7f0e0049

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :pswitch_7
    const v0, 0x7f0e004c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :pswitch_8
    const v0, 0x7f0e0099

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :pswitch_9
    const v0, 0x7f0e008b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_a
    const v0, 0x7f0e0038

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cc39174 -> :sswitch_a
        -0x5a466fbd -> :sswitch_9
        -0x511716ff -> :sswitch_8
        -0x4576ef3e -> :sswitch_7
        -0x33cb743 -> :sswitch_6
        0x1a97e -> :sswitch_5
        0x2eef92 -> :sswitch_4
        0xfab1941 -> :sswitch_3
        0x181392b3 -> :sswitch_2
        0x567310da -> :sswitch_1
        0x73526992 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "whatsapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "facebook_messenger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "dash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "ndt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "http_header_field_manipulation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "web_connectivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "telegram"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "http_invalid_request_line"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 267
    const-string v0, ""

    return-object v0

    .line 265
    :pswitch_0
    const-string v0, "https://ooni.torproject.org/nettest/facebook-messenger/"

    return-object v0

    .line 263
    :pswitch_1
    const-string v0, "https://ooni.torproject.org/nettest/telegram/"

    return-object v0

    .line 261
    :pswitch_2
    const-string v0, "https://ooni.torproject.org/nettest/whatsapp/"

    return-object v0

    .line 259
    :pswitch_3
    const-string v0, "https://ooni.torproject.org/nettest/dash/"

    return-object v0

    .line 257
    :pswitch_4
    const-string v0, "https://ooni.torproject.org/nettest/http-header-field-manipulation/"

    return-object v0

    .line 255
    :pswitch_5
    const-string v0, "https://ooni.torproject.org/nettest/web-connectivity/"

    return-object v0

    .line 253
    :pswitch_6
    const-string v0, "https://ooni.torproject.org/nettest/ndt/"

    return-object v0

    .line 251
    :pswitch_7
    const-string v0, "https://ooni.torproject.org/nettest/http-invalid-request-line/"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a466fbd -> :sswitch_7
        -0x511716ff -> :sswitch_6
        -0x4576ef3e -> :sswitch_5
        -0x33cb743 -> :sswitch_4
        0x1a97e -> :sswitch_3
        0x2eef92 -> :sswitch_2
        0x567310da -> :sswitch_1
        0x73526992 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
