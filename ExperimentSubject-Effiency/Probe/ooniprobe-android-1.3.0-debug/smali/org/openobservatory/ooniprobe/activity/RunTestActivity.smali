.class public Lorg/openobservatory/ooniprobe/activity/RunTestActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "RunTestActivity.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static runButton:Landroid/support/v7/widget/AppCompatButton;

.field private static testImage:Landroid/widget/ImageView;

.field private static testTitle:Landroid/widget/TextView;

.field private static test_name:Ljava/lang/String;

.field private static title:Landroid/widget/TextView;

.field private static urls:Landroid/widget/TextView;


# instance fields
.field private mUrlListAdapter:Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;

.field private testUrlList:Landroid/support/v7/widget/RecyclerView;

.field private test_progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->test_name:Ljava/lang/String;

    return-object v0
.end method

.method public static versionCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str1",
            "str2"
        }
    .end annotation

    .line 264
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "vals1":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "vals2":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 268
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 273
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    .line 274
    .local v3, "diff":I
    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v4

    return v4

    .line 278
    .end local v3    # "diff":I
    :cond_1
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v3

    return v3
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

    .line 219
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 220
    return-void
.end method

.method public configureScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "td"    # Ljava/lang/String;
    .param p2, "ta"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "td",
            "ta"
        }
    .end annotation

    .line 124
    invoke-static {p0, p0}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/openobservatory/ooniprobe/data/TestData;->addObserver(Ljava/util/Observer;)V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->title:Landroid/widget/TextView;

    const v1, 0x7f0e0081

    invoke-virtual {p0, v1}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->test_name:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "test":Ljava/lang/String;
    sget-object v1, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->testTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    sget-object v1, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->testImage:Landroid/widget/ImageView;

    sget-object v2, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->test_name:Ljava/lang/String;

    invoke-static {v2}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestImageBig(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v2, "urlItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 139
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .local v3, "taJson":Lorg/json/JSONObject;
    const-string v4, "urls"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 141
    .local v4, "urls":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 142
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 151
    .end local v3    # "taJson":Lorg/json/JSONObject;
    .end local v4    # "urls":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_1
    nop

    .line 152
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 143
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Lorg/json/JSONException;
    const v4, 0x7f0e0054

    invoke-virtual {p0, v4}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e0095

    invoke-virtual {p0, v5}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$4;

    invoke-direct {v6, p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$4;-><init>(Lorg/openobservatory/ooniprobe/activity/RunTestActivity;)V

    invoke-static {p0, v4, v5, v6}, Lorg/openobservatory/ooniprobe/utils/Alert;->alertDialogWithAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 149
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    return-void

    .line 155
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->test_name:Ljava/lang/String;

    const-string v4, "web_connectivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    const v3, 0x7f0e007a

    invoke-virtual {p0, v3}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v3, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iput-object v3, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->mUrlListAdapter:Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;

    goto :goto_3

    .line 160
    :cond_3
    new-instance v3, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iput-object v3, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->mUrlListAdapter:Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;

    .line 162
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 163
    sget-object v3, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->urls:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :cond_4
    sget-object v3, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->runButton:Landroid/support/v7/widget/AppCompatButton;

    new-instance v4, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$5;

    invoke-direct {v4, p0, v2}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$5;-><init>(Lorg/openobservatory/ooniprobe/activity/RunTestActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->testUrlList:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->mUrlListAdapter:Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 175
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 176
    .local v3, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v4, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->testUrlList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 177
    return-void
.end method

.method public goToMainActivity()V
    .locals 2

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, "MainActivityIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->finish()V

    .line 190
    return-void
.end method

.method public gotIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 79
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "mv"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "mv":Ljava/lang/String;
    const-string v2, "1.3.0"

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "split":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 83
    .local v3, "version_name":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 84
    invoke-static {v3, v1}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 85
    const-string v4, "tn"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "tn":Ljava/lang/String;
    const-string v5, "ta"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "ta":Ljava/lang/String;
    const-string v6, "td"

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "td":Ljava/lang/String;
    invoke-static {p0, v4}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "test":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 90
    sput-object v4, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->test_name:Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v6, v5}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->configureScreen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    const v8, 0x7f0e0054

    invoke-virtual {p0, v8}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0e0090

    invoke-virtual {p0, v10}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$1;

    invoke-direct {v10, p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$1;-><init>(Lorg/openobservatory/ooniprobe/activity/RunTestActivity;)V

    invoke-static {p0, v8, v9, v10}, Lorg/openobservatory/ooniprobe/utils/Alert;->alertDialogWithAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    .end local v4    # "tn":Ljava/lang/String;
    .end local v5    # "ta":Ljava/lang/String;
    .end local v6    # "td":Ljava/lang/String;
    .end local v7    # "test":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 102
    :cond_1
    const v4, 0x7f0e006a

    invoke-virtual {p0, v4}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e006b

    invoke-virtual {p0, v5}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$2;

    invoke-direct {v6, p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$2;-><init>(Lorg/openobservatory/ooniprobe/activity/RunTestActivity;)V

    new-instance v7, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$3;

    invoke-direct {v7, p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity$3;-><init>(Lorg/openobservatory/ooniprobe/activity/RunTestActivity;)V

    invoke-static {p0, v4, v5, v6, v7}, Lorg/openobservatory/ooniprobe/utils/Alert;->alertDialogWithAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 121
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "mv":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    .end local v3    # "version_name":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method public isRunning()Ljava/lang/Boolean;
    .locals 5

    .line 241
    invoke-static {p0, p0}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->runningTests:Ljava/util/ArrayList;

    .line 242
    .local v0, "runningTests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 243
    .local v2, "test":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-object v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    sget-object v4, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->test_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 245
    .end local v2    # "test":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    :cond_0
    goto :goto_0

    .line 246
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
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

    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->setContentView(I)V

    .line 56
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->urls:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatButton;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->runButton:Landroid/support/v7/widget/AppCompatButton;

    .line 58
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->title:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0800da

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->testTitle:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->testImage:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->test_progress:Landroid/widget/ProgressBar;

    .line 62
    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->testUrlList:Landroid/support/v7/widget/RecyclerView;

    .line 65
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->gotIntent(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 202
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 203
    const/4 v1, 0x1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0, p1}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->gotIntent(Landroid/content/Intent;)V

    .line 74
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

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->onBackPressed()V

    .line 213
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 209
    :pswitch_0
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->finish()V

    .line 210
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x7f080039
        :pswitch_0
    .end packed-switch
.end method

.method public openPlayStore(Ljava/lang/String;)V
    .locals 3
    .param p1, "appPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appPackageName"
        }
    .end annotation

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v0, "playStore":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->finish()V

    .line 197
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "observable",
            "data"
        }
    .end annotation

    .line 224
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->updateTest()V

    .line 226
    return-void
.end method

.method public updateTest()V
    .locals 4

    .line 229
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->isRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->test_progress:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 231
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->test_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->runButton:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatButton;->setVisibility(I)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->test_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/RunTestActivity;->runButton:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatButton;->setVisibility(I)V

    .line 238
    :goto_0
    return-void
.end method
