.class Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$1;
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

    .line 59
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$1;->this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;

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

    .line 61
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$1;->this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;
    invoke-static {v0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;)Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->getWizard()Lme/panavtec/wizard/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lme/panavtec/wizard/Wizard;->navigateNext()Z

    .line 62
    return-void
.end method
