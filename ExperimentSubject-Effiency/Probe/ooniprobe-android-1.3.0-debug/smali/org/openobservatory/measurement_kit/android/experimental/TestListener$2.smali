.class Lorg/openobservatory/measurement_kit/android/experimental/TestListener$2;
.super Landroid/content/BroadcastReceiver;
.source "TestListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/android/experimental/TestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

.field final synthetic val$cb:Lorg/openobservatory/measurement_kit/nettests/EntryCallback;


# direct methods
.method constructor <init>(Lorg/openobservatory/measurement_kit/android/experimental/TestListener;Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    .line 56
    iput-object p1, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$2;->this$0:Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    iput-object p2, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$2;->val$cb:Lorg/openobservatory/measurement_kit/nettests/EntryCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 59
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "entry":Ljava/lang/String;
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$2;->val$cb:Lorg/openobservatory/measurement_kit/nettests/EntryCallback;

    invoke-interface {v1, v0}, Lorg/openobservatory/measurement_kit/nettests/EntryCallback;->callback(Ljava/lang/String;)V

    .line 61
    return-void
.end method
