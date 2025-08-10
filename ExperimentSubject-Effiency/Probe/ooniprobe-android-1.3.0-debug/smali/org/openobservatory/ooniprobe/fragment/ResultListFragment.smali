.class public Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ResultListFragment.java"


# static fields
.field private static final DEBUG_TAG:Ljava/lang/String; = "ResultListFragment"


# instance fields
.field private mActivity:Lorg/openobservatory/ooniprobe/activity/ResultActivity;

.field private mResultTestsListAdapter:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

.field private testResultList:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
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

    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 38
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/openobservatory/ooniprobe/activity/ResultActivity;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/ResultActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    nop

    .line 43
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
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

    .line 54
    move-object/from16 v1, p0

    const-string v2, "ResultListFragment"

    const v0, 0x7f0a0038

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v4, v0, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 55
    .local v3, "v":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "json_file"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "jsonFilename":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 58
    .local v7, "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openobservatory/ooniprobe/model/TestResult;>;"
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v8, v1, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/ResultActivity;

    invoke-virtual {v8}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v0, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v0

    .line 59
    .local v8, "jsonFile":Ljava/io/File;
    new-instance v0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;

    invoke-direct {v0, v8}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;-><init>(Ljava/io/File;)V

    move-object v9, v0

    .line 60
    .local v9, "jsonl":Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;
    invoke-virtual {v9}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v0

    .line 63
    .local v11, "jsonObj":Lorg/json/JSONObject;
    :try_start_1
    const-string v0, "test_keys"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    .local v0, "blocking":Lorg/json/JSONObject;
    const-string v12, "blocking"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 65
    .local v12, "object":Ljava/lang/Object;
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 66
    const/4 v13, 0x2

    .local v13, "anomaly":I
    goto :goto_1

    .line 67
    .end local v13    # "anomaly":I
    :cond_0
    instance-of v13, v12, Ljava/lang/Boolean;

    if-eqz v13, :cond_1

    .line 68
    const/4 v13, 0x0

    .restart local v13    # "anomaly":I
    goto :goto_1

    .line 70
    .end local v13    # "anomaly":I
    :cond_1
    const/4 v13, 0x1

    .line 71
    .restart local v13    # "anomaly":I
    :goto_1
    new-instance v14, Lorg/openobservatory/ooniprobe/model/TestResult;

    const-string v15, "input"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Lorg/openobservatory/ooniprobe/model/TestResult;-><init>(Ljava/lang/String;I)V

    .line 72
    .local v14, "result":Lorg/openobservatory/ooniprobe/model/TestResult;
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .end local v0    # "blocking":Lorg/json/JSONObject;
    .end local v12    # "object":Ljava/lang/Object;
    .end local v13    # "anomaly":I
    .end local v14    # "result":Lorg/openobservatory/ooniprobe/model/TestResult;
    goto :goto_2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to open json object "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 77
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v11    # "jsonObj":Lorg/json/JSONObject;
    :goto_2
    goto :goto_0

    .line 81
    .end local v8    # "jsonFile":Ljava/io/File;
    .end local v9    # "jsonl":Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;
    :cond_2
    goto :goto_3

    .line 78
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to open file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    const v0, 0x7f08009b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, v1, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->testResultList:Landroid/support/v7/widget/RecyclerView;

    .line 83
    new-instance v0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

    invoke-virtual/range {p0 .. p0}, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/util/ArrayList;)V

    iput-object v0, v1, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->mResultTestsListAdapter:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

    .line 84
    iget-object v2, v1, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->testResultList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 85
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v2, v1, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->testResultList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 87
    new-instance v2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object v8, v1, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->testResultList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 88
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v9

    invoke-direct {v2, v8, v9}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 89
    .local v2, "dividerItemDecoration":Landroid/support/v7/widget/DividerItemDecoration;
    iget-object v8, v1, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->testResultList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 90
    iget-object v8, v1, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->mResultTestsListAdapter:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

    invoke-virtual {v8, v7}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 92
    return-object v3
.end method

.method public onDetach()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/ResultActivity;

    .line 49
    return-void
.end method
