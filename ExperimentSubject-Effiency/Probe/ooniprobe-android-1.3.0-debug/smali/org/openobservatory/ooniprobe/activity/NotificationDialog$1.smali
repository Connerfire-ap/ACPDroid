.class Lorg/openobservatory/ooniprobe/activity/NotificationDialog$1;
.super Ljava/lang/Object;
.source "NotificationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/activity/NotificationDialog;->displayAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/activity/NotificationDialog;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/activity/NotificationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/activity/NotificationDialog;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/activity/NotificationDialog$1;->this$0:Lorg/openobservatory/ooniprobe/activity/NotificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "id"
        }
    .end annotation

    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/activity/NotificationDialog$1;->this$0:Lorg/openobservatory/ooniprobe/activity/NotificationDialog;

    const-class v2, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/activity/NotificationDialog$1;->this$0:Lorg/openobservatory/ooniprobe/activity/NotificationDialog;

    invoke-virtual {v1}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "payload"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/activity/NotificationDialog$1;->this$0:Lorg/openobservatory/ooniprobe/activity/NotificationDialog;

    invoke-virtual {v1, v0}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog;->startActivity(Landroid/content/Intent;)V

    .line 47
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/activity/NotificationDialog$1;->this$0:Lorg/openobservatory/ooniprobe/activity/NotificationDialog;

    invoke-virtual {v1}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog;->finish()V

    .line 48
    return-void
.end method
