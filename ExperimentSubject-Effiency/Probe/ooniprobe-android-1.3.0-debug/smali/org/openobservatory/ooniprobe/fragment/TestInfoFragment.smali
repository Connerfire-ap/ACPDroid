.class public Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;
.super Landroid/support/v4/app/Fragment;
.source "TestInfoFragment.java"


# static fields
.field private static test_name:Ljava/lang/String;


# instance fields
.field private learn_moreButton:Landroid/support/v7/widget/AppCompatButton;

.field private mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

.field private runButton:Landroid/support/v7/widget/AppCompatButton;

.field private testDesc:Landroid/widget/TextView;

.field private testImage:Landroid/widget/ImageView;

.field private test_progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->test_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;
    .locals 1
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;

    .line 24
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

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

    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 37
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/openobservatory/ooniprobe/activity/MainActivity;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    nop

    .line 42
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
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

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->setHasOptionsMenu(Z)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
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

    .line 58
    const v0, 0x7f0a003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-virtual {v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 60
    .local v1, "actionBar":Landroid/support/v7/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 63
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "test_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->test_name:Ljava/lang/String;

    .line 64
    iget-object v4, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v4, v3}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    const v3, 0x7f080067

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AppCompatButton;

    iput-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->learn_moreButton:Landroid/support/v7/widget/AppCompatButton;

    .line 67
    new-instance v4, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment$1;

    invoke-direct {v4, p0}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment$1;-><init>(Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v3, 0x7f0800a2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AppCompatButton;

    iput-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->runButton:Landroid/support/v7/widget/AppCompatButton;

    .line 74
    new-instance v4, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment$2;

    invoke-direct {v4, p0}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment$2;-><init>(Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v3, 0x7f0800d7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->testImage:Landroid/widget/ImageView;

    .line 82
    sget-object v4, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->test_name:Ljava/lang/String;

    invoke-static {v4}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestImageBig(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    const v3, 0x7f0800d3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->testDesc:Landroid/widget/TextView;

    .line 85
    iget-object v4, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    sget-object v5, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->test_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestDesc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v3, 0x7f080094

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->test_progress:Landroid/widget/ProgressBar;

    .line 88
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->updateButtons()V

    .line 89
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    .line 48
    return-void
.end method

.method public updateButtons()V
    .locals 4

    .line 93
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v0, v0}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    move-result-object v0

    sget-object v1, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->test_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/data/TestData;->getTestWithName(Ljava/lang/String;)Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    move-result-object v0

    .line 94
    .local v0, "current":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 95
    iget-boolean v3, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->running:Z

    if-nez v3, :cond_0

    .line 96
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->test_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->runButton:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/AppCompatButton;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->test_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->runButton:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatButton;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->test_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->runButton:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/AppCompatButton;->setVisibility(I)V

    .line 108
    :goto_0
    return-void
.end method
