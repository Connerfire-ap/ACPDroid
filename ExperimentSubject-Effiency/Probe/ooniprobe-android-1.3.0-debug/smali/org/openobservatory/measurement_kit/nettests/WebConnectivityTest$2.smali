.class Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest$2;
.super Ljava/lang/Object;
.source "WebConnectivityTest.java"

# interfaces
.implements Lorg/openobservatory/measurement_kit/nettests/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest;->on_progress(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest;

.field final synthetic val$event_id:Ljava/lang/String;

.field final synthetic val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;


# direct methods
.method constructor <init>(Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest;Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest;

    .line 81
    iput-object p1, p0, Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest$2;->this$0:Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest;

    iput-object p2, p0, Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest$2;->val$event_id:Ljava/lang/String;

    iput-object p3, p0, Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest$2;->val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(DLjava/lang/String;)V
    .locals 3
    .param p1, "percent"    # D
    .param p3, "msg"    # Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest$2;->val$event_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "type"

    const-string v2, "on_progress"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "percent"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 88
    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/nettests/WebConnectivityTest$2;->val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    invoke-virtual {v1, v0}, Lorg/openobservatory/measurement_kit/android/IntentRouter;->emit_intent(Landroid/content/Intent;)Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 90
    return-void
.end method
