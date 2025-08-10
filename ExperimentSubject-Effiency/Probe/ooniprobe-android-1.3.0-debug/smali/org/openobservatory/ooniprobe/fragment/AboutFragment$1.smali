.class Lorg/openobservatory/ooniprobe/fragment/AboutFragment$1;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/fragment/AboutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/fragment/AboutFragment;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/AboutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/fragment/AboutFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/AboutFragment$1;->this$0:Lorg/openobservatory/ooniprobe/fragment/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://ooni.torproject.org/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/AboutFragment$1;->this$0:Lorg/openobservatory/ooniprobe/fragment/AboutFragment;

    invoke-virtual {v1, v0}, Lorg/openobservatory/ooniprobe/fragment/AboutFragment;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
