.class Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$2;
.super Ljava/lang/Object;
.source "IConsentPage3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$2;->this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;

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

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://ooni.torproject.org/about/risks/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$2;->this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;

    invoke-virtual {v1, v0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method
