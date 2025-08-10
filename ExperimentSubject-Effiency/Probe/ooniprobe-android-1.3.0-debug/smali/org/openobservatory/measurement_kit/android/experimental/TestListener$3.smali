.class Lorg/openobservatory/measurement_kit/android/experimental/TestListener$3;
.super Landroid/content/BroadcastReceiver;
.source "TestListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->on_end(Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;)Lorg/openobservatory/measurement_kit/android/experimental/TestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

.field final synthetic val$cb:Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;


# direct methods
.method constructor <init>(Lorg/openobservatory/measurement_kit/android/experimental/TestListener;Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    .line 71
    iput-object p1, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$3;->this$0:Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    iput-object p2, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$3;->val$cb:Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$3;->val$cb:Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;

    invoke-interface {v0}, Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;->callback()V

    .line 76
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$3;->this$0:Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    invoke-virtual {v0}, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->clear_all()V

    .line 77
    return-void
.end method
