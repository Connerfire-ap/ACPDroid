.class public Lorg/openobservatory/ooniprobe/utils/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field private static final DEBUG_TAG:Ljava/lang/String; = "AlarmReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 19
    const v0, 0x7f0e005e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/openobservatory/ooniprobe/utils/NotificationHandler;->sendNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    .line 21
    new-instance v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    const-string v1, "web_connectivity"

    invoke-direct {v0, p1, v1}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/openobservatory/ooniprobe/data/TestData;->doNetworkMeasurements(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 22
    new-instance v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    const-string v1, "http_header_field_manipulation"

    invoke-direct {v0, p1, v1}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/openobservatory/ooniprobe/data/TestData;->doNetworkMeasurements(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 23
    new-instance v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    const-string v1, "http_invalid_request_line"

    invoke-direct {v0, p1, v1}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/openobservatory/ooniprobe/data/TestData;->doNetworkMeasurements(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 24
    new-instance v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    const-string v1, "ndt"

    invoke-direct {v0, p1, v1}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/openobservatory/ooniprobe/data/TestData;->doNetworkMeasurements(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 25
    new-instance v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    const-string v1, "dash"

    invoke-direct {v0, p1, v1}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/openobservatory/ooniprobe/data/TestData;->doNetworkMeasurements(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 26
    return-void
.end method
