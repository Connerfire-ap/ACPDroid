.class Lorg/openobservatory/ooniprobe/activity/NotificationDialog$2;
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

    .line 34
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/activity/NotificationDialog$2;->this$0:Lorg/openobservatory/ooniprobe/activity/NotificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
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

    .line 36
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 37
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/NotificationDialog$2;->this$0:Lorg/openobservatory/ooniprobe/activity/NotificationDialog;

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog;->finish()V

    .line 38
    return-void
.end method
