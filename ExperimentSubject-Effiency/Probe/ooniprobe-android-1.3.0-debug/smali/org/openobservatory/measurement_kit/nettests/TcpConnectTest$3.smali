.class Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$3;
.super Ljava/lang/Object;
.source "TcpConnectTest.java"

# interfaces
.implements Lorg/openobservatory/measurement_kit/nettests/EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest;->on_event(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest;

.field final synthetic val$event_id:Ljava/lang/String;

.field final synthetic val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;


# direct methods
.method constructor <init>(Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest;Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest;

    .line 101
    iput-object p1, p0, Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$3;->this$0:Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest;

    iput-object p2, p0, Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$3;->val$event_id:Ljava/lang/String;

    iput-object p3, p0, Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$3;->val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$3;->val$event_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "type"

    const-string v2, "on_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$3;->val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    invoke-virtual {v1, v0}, Lorg/openobservatory/measurement_kit/android/IntentRouter;->emit_intent(Landroid/content/Intent;)Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 109
    return-void
.end method
