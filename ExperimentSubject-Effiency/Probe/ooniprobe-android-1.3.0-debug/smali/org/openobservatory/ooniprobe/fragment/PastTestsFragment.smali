.class public Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;
.super Landroid/support/v4/app/Fragment;
.source "PastTestsFragment.java"


# instance fields
.field private mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

.field private mPastTestsListAdapter:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

.field private mPastTestsListView:Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;
    .locals 1
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;

    .line 25
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

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

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/openobservatory/ooniprobe/activity/MainActivity;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    nop

    .line 39
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
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

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->setHasOptionsMenu(Z)V

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "menu",
            "inflater"
        }
    .end annotation

    .line 61
    const v0, 0x7f0b0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 63
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

    .line 68
    const v0, 0x7f0a0036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f08008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mPastTestsListView:Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;

    .line 71
    new-instance v1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;-><init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mPastTestsListAdapter:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    .line 72
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mPastTestsListView:Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;

    invoke-virtual {v2, v1}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 73
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mPastTestsListView:Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;

    invoke-virtual {v2, v1}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 75
    new-instance v2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mPastTestsListView:Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;

    invoke-virtual {v3}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 76
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 77
    .local v2, "dividerItemDecoration":Landroid/support/v7/widget/DividerItemDecoration;
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mPastTestsListView:Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;

    invoke-virtual {v3, v2}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 78
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v3}, Lorg/openobservatory/ooniprobe/data/TestStorage;->resetNewTests(Landroid/content/Context;)V

    .line 79
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-virtual {v3}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->updateActionBar()V

    .line 80
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mPastTestsListView:Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;

    const v4, 0x7f08004c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 82
    const v3, 0x7f0800a2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AppCompatButton;

    .line 83
    .local v3, "runTest":Landroid/support/v7/widget/AppCompatButton;
    new-instance v4, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment$1;

    invoke-direct {v4, p0}, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment$1;-><init>(Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 49
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 50
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    const v1, 0x7f0e006e

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->updateList()V

    .line 52
    return-void
.end method

.method public updateList()V
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mPastTestsListAdapter:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTestsReverse(Lorg/openobservatory/ooniprobe/activity/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 95
    return-void
.end method
