.class Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep2;
.super Lme/panavtec/wizard/WizardPage;
.source "InformedConsentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WizardStep2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/panavtec/wizard/WizardPage<",
        "Lorg/openobservatory/ooniprobe/fragment/IConsentPage2Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep2;->this$0:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    invoke-direct {p0}, Lme/panavtec/wizard/WizardPage;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep2;->createFragment()Lorg/openobservatory/ooniprobe/fragment/IConsentPage2Fragment;

    move-result-object v0

    return-object v0
.end method

.method public createFragment()Lorg/openobservatory/ooniprobe/fragment/IConsentPage2Fragment;
    .locals 1

    .line 111
    new-instance v0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage2Fragment;

    invoke-direct {v0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage2Fragment;-><init>()V

    return-object v0
.end method
