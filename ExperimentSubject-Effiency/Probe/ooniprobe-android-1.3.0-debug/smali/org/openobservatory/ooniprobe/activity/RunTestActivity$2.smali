.class Lorg/openobservatory/ooniprobe/activity/RunTestActivity$2;
.super Ljava/lang/Object;
.source "RunTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->gotIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/activity/RunTestActivity;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/activity/RunTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/activity/RunTestActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$2;->this$0:Lorg/openobservatory/ooniprobe/activity/RunTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
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

    .line 105
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$2;->this$0:Lorg/openobservatory/ooniprobe/activity/RunTestActivity;

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "appPackageName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$2;->this$0:Lorg/openobservatory/ooniprobe/activity/RunTestActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->openPlayStore(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$2;->this$0:Lorg/openobservatory/ooniprobe/activity/RunTestActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->openPlayStore(Ljava/lang/String;)V

    .line 111
    .end local v1    # "anfe":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method
