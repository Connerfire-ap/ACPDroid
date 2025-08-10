.class public Lorg/openobservatory/ooniprobe/activity/NotificationDialog;
.super Landroid/app/Activity;
.source "NotificationDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private displayAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 30
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    const v1, 0x7f0e0067

    invoke-virtual {p0, v1}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 33
    const v1, 0x7f0e0029

    invoke-virtual {p0, v1}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/openobservatory/ooniprobe/activity/NotificationDialog$2;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog$2;-><init>(Lorg/openobservatory/ooniprobe/activity/NotificationDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 40
    const v1, 0x7f0e0068

    invoke-virtual {p0, v1}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/openobservatory/ooniprobe/activity/NotificationDialog$1;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog$1;-><init>(Lorg/openobservatory/ooniprobe/activity/NotificationDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 51
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "message":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/openobservatory/ooniprobe/activity/NotificationDialog;->displayAlert(Ljava/lang/String;)V

    .line 25
    return-void
.end method
