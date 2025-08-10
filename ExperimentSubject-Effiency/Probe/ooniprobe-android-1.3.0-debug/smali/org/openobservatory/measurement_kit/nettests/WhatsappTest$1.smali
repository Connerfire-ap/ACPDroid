.class Lorg/openobservatory/measurement_kit/nettests/WhatsappTest$1;
.super Ljava/lang/Object;
.source "WhatsappTest.java"

# interfaces
.implements Lorg/openobservatory/measurement_kit/common/LogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/measurement_kit/nettests/WhatsappTest;->on_log(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/WhatsappTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/measurement_kit/nettests/WhatsappTest;

.field final synthetic val$event_id:Ljava/lang/String;

.field final synthetic val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;


# direct methods
.method constructor <init>(Lorg/openobservatory/measurement_kit/nettests/WhatsappTest;Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/measurement_kit/nettests/WhatsappTest;

    .line 61
    iput-object p1, p0, Lorg/openobservatory/measurement_kit/nettests/WhatsappTest$1;->this$0:Lorg/openobservatory/measurement_kit/nettests/WhatsappTest;

    iput-object p2, p0, Lorg/openobservatory/measurement_kit/nettests/WhatsappTest$1;->val$event_id:Ljava/lang/String;

    iput-object p3, p0, Lorg/openobservatory/measurement_kit/nettests/WhatsappTest$1;->val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(JLjava/lang/String;)V
    .locals 3
    .param p1, "verbosity"    # J
    .param p3, "message"    # Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/nettests/WhatsappTest$1;->val$event_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "type"

    const-string v2, "on_log"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "verbosity"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 68
    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/nettests/WhatsappTest$1;->val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    invoke-virtual {v1, v0}, Lorg/openobservatory/measurement_kit/android/IntentRouter;->emit_intent(Landroid/content/Intent;)Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 70
    return-void
.end method
