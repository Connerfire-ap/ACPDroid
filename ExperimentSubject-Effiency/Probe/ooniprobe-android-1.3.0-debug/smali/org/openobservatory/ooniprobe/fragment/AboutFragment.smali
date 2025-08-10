.class public Lorg/openobservatory/ooniprobe/fragment/AboutFragment;
.super Landroid/support/v4/app/Fragment;
.source "AboutFragment.java"


# instance fields
.field private learn_moreButton:Landroid/support/v7/widget/AppCompatButton;

.field private mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

.field private ppButton:Landroid/support/v7/widget/AppCompatButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 29
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/openobservatory/ooniprobe/activity/MainActivity;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/AboutFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    nop

    .line 34
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must implement onViewSelected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/fragment/AboutFragment;->setHasOptionsMenu(Z)V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 57
    const v0, 0x7f0a0030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatButton;

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/AboutFragment;->learn_moreButton:Landroid/support/v7/widget/AppCompatButton;

    .line 59
    new-instance v2, Lorg/openobservatory/ooniprobe/fragment/AboutFragment$1;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/fragment/AboutFragment$1;-><init>(Lorg/openobservatory/ooniprobe/fragment/AboutFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f080092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatButton;

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/AboutFragment;->ppButton:Landroid/support/v7/widget/AppCompatButton;

    .line 66
    new-instance v2, Lorg/openobservatory/ooniprobe/fragment/AboutFragment$2;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/fragment/AboutFragment$2;-><init>(Lorg/openobservatory/ooniprobe/fragment/AboutFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    .local v1, "version_text":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ooniprobe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/openobservatory/ooniprobe/utils/VersionUtils;->get_software_version()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nmeasurement-kit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/openobservatory/measurement_kit/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/AboutFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    .line 40
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 45
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 46
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/AboutFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    const v1, 0x7f0e0021

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
