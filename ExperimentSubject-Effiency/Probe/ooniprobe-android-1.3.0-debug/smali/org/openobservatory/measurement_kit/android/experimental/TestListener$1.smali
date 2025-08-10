.class Lorg/openobservatory/measurement_kit/android/experimental/TestListener$1;
.super Landroid/content/BroadcastReceiver;
.source "TestListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->on_log(Lorg/openobservatory/measurement_kit/common/LogCallback;)Lorg/openobservatory/measurement_kit/android/experimental/TestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

.field final synthetic val$cb:Lorg/openobservatory/measurement_kit/common/LogCallback;


# direct methods
.method constructor <init>(Lorg/openobservatory/measurement_kit/android/experimental/TestListener;Lorg/openobservatory/measurement_kit/common/LogCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    .line 40
    iput-object p1, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$1;->this$0:Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    iput-object p2, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$1;->val$cb:Lorg/openobservatory/measurement_kit/common/LogCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 43
    const-string v0, "verbosity"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 44
    .local v0, "verbosity":J
    const-string v2, "message"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "message":Ljava/lang/String;
    iget-object v3, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$1;->val$cb:Lorg/openobservatory/measurement_kit/common/LogCallback;

    invoke-interface {v3, v0, v1, v2}, Lorg/openobservatory/measurement_kit/common/LogCallback;->callback(JLjava/lang/String;)V

    .line 46
    return-void
.end method
