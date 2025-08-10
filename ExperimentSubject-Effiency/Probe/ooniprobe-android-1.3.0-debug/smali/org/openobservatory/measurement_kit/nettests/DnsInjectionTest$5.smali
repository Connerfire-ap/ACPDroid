.class Lorg/openobservatory/measurement_kit/nettests/DnsInjectionTest$5;
.super Ljava/lang/Object;
.source "DnsInjectionTest.java"

# interfaces
.implements Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/measurement_kit/nettests/DnsInjectionTest;->start(Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/measurement_kit/nettests/DnsInjectionTest;

.field final synthetic val$event_id:Ljava/lang/String;

.field final synthetic val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;


# direct methods
.method constructor <init>(Lorg/openobservatory/measurement_kit/nettests/DnsInjectionTest;Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentRouter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/measurement_kit/nettests/DnsInjectionTest;

    .line 154
    iput-object p1, p0, Lorg/openobservatory/measurement_kit/nettests/DnsInjectionTest$5;->this$0:Lorg/openobservatory/measurement_kit/nettests/DnsInjectionTest;

    iput-object p2, p0, Lorg/openobservatory/measurement_kit/nettests/DnsInjectionTest$5;->val$event_id:Ljava/lang/String;

    iput-object p3, p0, Lorg/openobservatory/measurement_kit/nettests/DnsInjectionTest$5;->val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 3

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/nettests/DnsInjectionTest$5;->val$event_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "type"

    const-string v2, "on_test_complete"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/nettests/DnsInjectionTest$5;->val$router:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    invoke-virtual {v1, v0}, Lorg/openobservatory/measurement_kit/android/IntentRouter;->emit_intent(Landroid/content/Intent;)Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 161
    return-void
.end method
