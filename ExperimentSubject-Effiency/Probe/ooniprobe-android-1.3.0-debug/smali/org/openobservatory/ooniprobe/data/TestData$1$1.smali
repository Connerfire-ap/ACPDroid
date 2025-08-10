.class Lorg/openobservatory/ooniprobe/data/TestData$1$1;
.super Ljava/lang/Object;
.source "TestData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/data/TestData$1;->callback(DLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/data/TestData$1;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/data/TestData$1;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/data/TestData$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/data/TestData$1$1;->this$0:Lorg/openobservatory/ooniprobe/data/TestData$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 93
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/data/TestData;->notifyObservers()V

    .line 94
    return-void
.end method
