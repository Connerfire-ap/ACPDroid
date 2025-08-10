.class Lorg/openobservatory/ooniprobe/data/TestData$2$7;
.super Ljava/lang/Object;
.source "TestData.java"

# interfaces
.implements Lorg/openobservatory/measurement_kit/nettests/EntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/data/TestData$2;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/data/TestData$2;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/data/TestData$2;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/data/TestData$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2$7;->this$0:Lorg/openobservatory/ooniprobe/data/TestData$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 1
    .param p1, "entry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/data/TestData$2$7;->this$0:Lorg/openobservatory/ooniprobe/data/TestData$2;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    invoke-static {p1, v0}, Lorg/openobservatory/ooniprobe/data/TestData;->setAnomalyTelegram(Ljava/lang/String;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 187
    return-void
.end method
