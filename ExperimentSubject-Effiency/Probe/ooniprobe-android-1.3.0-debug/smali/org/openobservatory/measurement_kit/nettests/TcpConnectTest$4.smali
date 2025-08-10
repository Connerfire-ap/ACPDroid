.class Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$4;
.super Ljava/lang/Object;
.source "TcpConnectTest.java"

# interfaces
.implements Lorg/openobservatory/measurement_kit/nettests/EntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest;->on_entry(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest;
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

    .line 120
    iput-object p1, p0, Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$4;->this$0:Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest;

    iput-object p2, p0, Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$4;->val$event_id:Ljava/lang/String;

    iput-object p3, p0, Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$4;->val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 3
    .param p1, "entry"    # Ljava/lang/String;

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$4;->val$event_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "type"

    const-string v2, "on_entry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "entry"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/nettests/TcpConnectTest$4;->val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    invoke-virtual {v1, v0}, Lorg/openobservatory/measurement_kit/android/IntentRouter;->emit_intent(Landroid/content/Intent;)Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 128
    return-void
.end method
