.class public Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;
.super Landroid/support/v4/app/Fragment;
.source "IConsentPage3Fragment.java"


# instance fields
.field private learn_moreButton:Landroid/support/v7/widget/AppCompatButton;

.field private mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

.field private nextButton:Landroid/support/v7/widget/AppCompatButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;)Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;
    .locals 1
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;

    .line 18
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    return-object v0
.end method

.method public static create()Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;
    .locals 2

    .line 25
    new-instance v0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;

    invoke-direct {v0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;-><init>()V

    .line 26
    .local v0, "atf":Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v0
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

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 40
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    nop

    .line 45
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
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

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->setHasOptionsMenu(Z)V

    .line 34
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
    const v0, 0x7f0a0033

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatButton;

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->nextButton:Landroid/support/v7/widget/AppCompatButton;

    .line 59
    new-instance v2, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$1;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$1;-><init>(Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatButton;

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->learn_moreButton:Landroid/support/v7/widget/AppCompatButton;

    .line 65
    new-instance v2, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$2;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$2;-><init>(Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$3;

    invoke-direct {v3, p0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$3;-><init>(Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 101
    .local v1, "gesture":Landroid/view/GestureDetector;
    new-instance v2, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$4;

    invoke-direct {v2, p0, v1}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment$4;-><init>(Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;Landroid/view/GestureDetector;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage3Fragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    .line 51
    return-void
.end method
