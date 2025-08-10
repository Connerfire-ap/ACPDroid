.class public Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;
.super Landroid/support/v4/app/Fragment;
.source "IConsentPage5Fragment.java"


# instance fields
.field private mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

.field private mCkIncludeAsn:Landroid/support/v7/widget/SwitchCompat;

.field private mCkIncludeCountry:Landroid/support/v7/widget/SwitchCompat;

.field private mCkIncludeIP:Landroid/support/v7/widget/SwitchCompat;

.field private mCkUploadResults:Landroid/support/v7/widget/SwitchCompat;

.field private nextButton:Landroid/support/v7/widget/AppCompatButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;

    .line 22
    invoke-direct {p0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->next()V

    return-void
.end method

.method static synthetic access$100(Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;)Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;
    .locals 1
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;

    .line 22
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    return-object v0
.end method

.method public static create()Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;
    .locals 2

    .line 32
    new-instance v0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;

    invoke-direct {v0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;-><init>()V

    .line 33
    .local v0, "atf":Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v0
.end method

.method private next()V
    .locals 3

    .line 113
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mCkIncludeIP:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    const-string v2, "include_ip"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mCkIncludeAsn:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    const-string v2, "include_asn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 116
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mCkIncludeCountry:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    const-string v2, "include_country"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mCkUploadResults:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    const-string v2, "upload_results"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    invoke-virtual {v1}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->getWizard()Lme/panavtec/wizard/Wizard;

    move-result-object v1

    invoke-virtual {v1}, Lme/panavtec/wizard/Wizard;->navigateNext()Z

    .line 120
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

    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 47
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    nop

    .line 52
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
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

    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->setHasOptionsMenu(Z)V

    .line 41
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

    .line 63
    const v0, 0x7f0a0035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mCkIncludeIP:Landroid/support/v7/widget/SwitchCompat;

    .line 65
    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mCkIncludeAsn:Landroid/support/v7/widget/SwitchCompat;

    .line 66
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mCkIncludeCountry:Landroid/support/v7/widget/SwitchCompat;

    .line 67
    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mCkUploadResults:Landroid/support/v7/widget/SwitchCompat;

    .line 68
    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatButton;

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->nextButton:Landroid/support/v7/widget/AppCompatButton;

    .line 69
    new-instance v2, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$1;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$1;-><init>(Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$2;

    invoke-direct {v3, p0}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$2;-><init>(Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 103
    .local v1, "gesture":Landroid/view/GestureDetector;
    new-instance v2, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$3;

    invoke-direct {v2, p0, v1}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$3;-><init>(Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;Landroid/view/GestureDetector;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    .line 58
    return-void
.end method
