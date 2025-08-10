.class Lorg/openobservatory/ooniprobe/data/TestData$1;
.super Ljava/lang/Object;
.source "TestData.java"

# interfaces
.implements Lorg/openobservatory/measurement_kit/nettests/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/data/TestData;->configureTest(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$currentTest"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/data/TestData$1;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(DLjava/lang/String;)V
    .locals 3
    .param p1, "percent"    # D
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "percent",
            "msg"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/data/TestData$1;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double v1, v1, p1

    double-to-int v1, v1

    iput v1, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->progress:I

    .line 89
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->activity:Landroid/app/Activity;

    new-instance v1, Lorg/openobservatory/ooniprobe/data/TestData$1$1;

    invoke-direct {v1, p0}, Lorg/openobservatory/ooniprobe/data/TestData$1$1;-><init>(Lorg/openobservatory/ooniprobe/data/TestData$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    :cond_0
    return-void
.end method
