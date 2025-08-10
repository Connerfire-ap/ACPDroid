.class Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$1;
.super Ljava/lang/Object;
.source "IConsentPage5Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$1;->this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$1;->this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;

    # invokes: Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->next()V
    invoke-static {v0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;)V

    .line 72
    return-void
.end method
