.class public Lorg/openobservatory/ooniprobe/activity/ResultActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ResultActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private showTestLog()V
    .locals 4

    .line 100
    new-instance v0, Lorg/openobservatory/ooniprobe/fragment/TestLogFragment;

    invoke-direct {v0}, Lorg/openobservatory/ooniprobe/fragment/TestLogFragment;-><init>()V

    .line 101
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 102
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 103
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f08005a

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 104
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 105
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 106
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    .line 129
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method public checkGenericType()V
    .locals 4

    .line 62
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 63
    .local v0, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "GenericType"

    const-string v2, "NO"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "==INS=="

    const-string v3, "replace"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v2, "YES"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public goToResult()V
    .locals 6

    .line 70
    new-instance v0, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;

    invoke-direct {v0}, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;-><init>()V

    .line 71
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 72
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 73
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "position"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    const v4, 0x7f08005a

    invoke-virtual {v2, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 77
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 78
    return-void
.end method

.method public goToResultList()V
    .locals 4

    .line 81
    new-instance v0, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;

    invoke-direct {v0}, Lorg/openobservatory/ooniprobe/fragment/ResultListFragment;-><init>()V

    .line 82
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 83
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 84
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f08005a

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 85
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 86
    return-void
.end method

.method public hasMultipleResult()Ljava/lang/Boolean;
    .locals 7

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "results":I
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "json_file"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "jsonFilename":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v3, "jsonFile":Ljava/io/File;
    new-instance v4, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;

    invoke-direct {v4, v3}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;-><init>(Ljava/io/File;)V

    .line 114
    .local v4, "jsonl":Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;
    invoke-virtual {v4}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 115
    .local v6, "jsonObj":Lorg/json/JSONObject;
    add-int/lit8 v0, v0, 0x1

    .line 116
    if-le v0, v2, :cond_0

    .line 117
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 118
    .end local v6    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 123
    .end local v3    # "jsonFile":Ljava/io/File;
    .end local v4    # "jsonl":Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;
    :cond_1
    nop

    .line 124
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 119
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 38
    const-string v0, "==INS=="

    const-string v1, "ResultActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->checkGenericType()V

    .line 43
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 44
    const-string v1, "test_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "web_connectivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->hasMultipleResult()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->goToResultList()V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->goToResult()V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->goToResult()V

    .line 53
    :goto_0
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 54
    .local v2, "actionBar":Landroid/support/v7/app/ActionBar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    .end local v2    # "actionBar":Landroid/support/v7/app/ActionBar;
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->onBackPressed()V

    .line 95
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 91
    :pswitch_0
    invoke-direct {p0}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->showTestLog()V

    .line 92
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x7f0800fa
        :pswitch_0
    .end packed-switch
.end method
