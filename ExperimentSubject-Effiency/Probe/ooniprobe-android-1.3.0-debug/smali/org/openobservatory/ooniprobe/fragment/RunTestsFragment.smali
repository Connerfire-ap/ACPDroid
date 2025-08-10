.class public Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;
.super Landroid/support/v4/app/Fragment;
.source "RunTestsFragment.java"


# static fields
.field private static ts:Lorg/openobservatory/ooniprobe/data/TestStorage;


# instance fields
.field private mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

.field private mAvailableTestsListAdapter:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

.field private mAvailableTestsListView:Landroid/support/v7/widget/RecyclerView;


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

    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 30
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/openobservatory/ooniprobe/activity/MainActivity;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    nop

    .line 35
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
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

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->setHasOptionsMenu(Z)V

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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

    .line 60
    const v0, 0x7f0a0039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mAvailableTestsListView:Landroid/support/v7/widget/RecyclerView;

    .line 62
    new-instance v1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v2, v2}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    sget-object v3, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2, v3}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;-><init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;Ljava/util/LinkedHashMap;)V

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mAvailableTestsListAdapter:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    .line 63
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mAvailableTestsListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 64
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mAvailableTestsListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 66
    new-instance v2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mAvailableTestsListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 67
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 68
    .local v2, "dividerItemDecoration":Landroid/support/v7/widget/DividerItemDecoration;
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mAvailableTestsListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 70
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    .line 41
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 45
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 46
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 47
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    const v2, 0x7f0e0082

    invoke-virtual {v1, v2}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->updateList()V

    .line 50
    return-void
.end method

.method public updateList()V
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mAvailableTestsListAdapter:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v1, v1}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->setData(Ljava/util/LinkedHashMap;)V

    .line 75
    return-void
.end method
