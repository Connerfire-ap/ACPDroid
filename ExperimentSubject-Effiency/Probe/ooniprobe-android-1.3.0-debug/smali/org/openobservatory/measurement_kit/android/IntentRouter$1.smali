.class Lorg/openobservatory/measurement_kit/android/IntentRouter$1;
.super Landroid/content/BroadcastReceiver;
.source "IntentRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/measurement_kit/android/IntentRouter;->register_handler(Ljava/lang/String;Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentCallback;)Lorg/openobservatory/measurement_kit/android/IntentRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/measurement_kit/android/IntentRouter;

.field final synthetic val$cb:Lorg/openobservatory/measurement_kit/android/IntentCallback;


# direct methods
.method constructor <init>(Lorg/openobservatory/measurement_kit/android/IntentRouter;Lorg/openobservatory/measurement_kit/android/IntentCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 53
    iput-object p1, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter$1;->this$0:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    iput-object p2, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter$1;->val$cb:Lorg/openobservatory/measurement_kit/android/IntentCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter$1;->val$cb:Lorg/openobservatory/measurement_kit/android/IntentCallback;

    invoke-interface {v0, p2}, Lorg/openobservatory/measurement_kit/android/IntentCallback;->callback(Landroid/content/Intent;)V

    .line 57
    return-void
.end method
