.class public Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PastTestsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$OnItemClickListener;,
        Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:I

.field private mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

.field mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$OnItemClickListener;

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Lorg/openobservatory/ooniprobe/activity/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openobservatory/ooniprobe/activity/MainActivity;",
            "Ljava/util/ArrayList<",
            "Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    .line 47
    iput-object p2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->values:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .line 35
    invoke-direct {p0, p1}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->showPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 0
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;
    .param p1, "x1"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 35
    invoke-direct {p0, p1}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->goToResults(Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    return-void
.end method

.method static synthetic access$200(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;)Lorg/openobservatory/ooniprobe/activity/MainActivity;
    .locals 1
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    .line 35
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    return-object v0
.end method

.method public static final getColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 236
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 237
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    return v1

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method

.method private getDate(J)Ljava/lang/String;
    .locals 2
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 228
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 229
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 230
    const-string v1, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "date":Ljava/lang/String;
    return-object v1
.end method

.method private goToResults(Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 4
    .param p1, "i"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 128
    iget-boolean v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->viewed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    iget-wide v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-static {v0, v1, v2}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setViewed(Landroid/content/Context;J)V

    .line 129
    :cond_0
    iget-boolean v0, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    const-class v2, Lorg/openobservatory/ooniprobe/activity/ResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->json_file:Ljava/lang/String;

    const-string v2, "json_file"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->log_file:Ljava/lang/String;

    const-string v2, "log_file"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v2, "test_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-virtual {v1, v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    const v1, 0x7f0e0065

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    const v3, 0x7f0e0066

    invoke-virtual {v2, v3}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/openobservatory/ooniprobe/utils/Alert;->alertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void
.end method

.method private showPopupMenu(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 204
    .local v0, "item":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    new-instance v1, Landroid/support/v7/widget/PopupMenu;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-direct {v1, v2, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 206
    .local v1, "popup":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {v2, v4, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 208
    new-instance v2, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;

    invoke-direct {v2, p0, v0}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$4;-><init>(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 224
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 225
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 153
    .local v1, "i":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v1    # "i":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->notifyDataSetChanged()V

    .line 156
    return-void
.end method

.method public addTest(Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 1
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->notifyDataSetChanged()V

    .line 161
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 35
    check-cast p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 66
    .local v0, "i":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->txtTitle:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    iget-object v3, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->txtTimestamp:Landroid/widget/TextView;

    iget-wide v2, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-direct {p0, v2, v3}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->popupButton:Lorg/openobservatory/ooniprobe/view/ListImageButton;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openobservatory/ooniprobe/view/ListImageButton;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->popupButton:Lorg/openobservatory/ooniprobe/view/ListImageButton;

    new-instance v2, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;-><init>(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;)V

    invoke-virtual {v1, v2}, Lorg/openobservatory/ooniprobe/view/ListImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-boolean v1, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->viewed:Z

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->green_dot:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->green_dot:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :goto_0
    iget-boolean v1, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    const v2, 0x7f05002d

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 91
    iget v1, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->testImage:Landroid/widget/ImageView;

    iget-object v2, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    iget v3, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    invoke-static {v2, v3}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestImage(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->txtTitle:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    const v3, 0x7f05002b

    invoke-static {v2, v3}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->setTextColor(I)V

    goto :goto_1

    .line 95
    :cond_1
    iget v1, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    if-ne v1, v3, :cond_2

    .line 96
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->testImage:Landroid/widget/ImageView;

    iget-object v3, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    iget v4, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    invoke-static {v3, v4}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestImage(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->txtTitle:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    iget-object v3, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v3, v2}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->setTextColor(I)V

    goto :goto_1

    .line 99
    :cond_2
    iget v1, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 100
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->testImage:Landroid/widget/ImageView;

    iget-object v2, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    iget v3, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    invoke-static {v2, v3}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestImage(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->txtTitle:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    const v3, 0x7f050026

    invoke-static {v2, v3}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->setTextColor(I)V

    goto :goto_1

    .line 105
    :cond_3
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->testImage:Landroid/widget/ImageView;

    iget-object v4, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestImage(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->txtTitle:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    iget-object v3, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v3, v2}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->setTextColor(I)V

    .line 109
    :cond_4
    :goto_1
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->viewResult:Landroid/widget/Button;

    new-instance v2, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$2;

    invoke-direct {v2, p0, v0}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$2;-><init>(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$3;

    invoke-direct {v2, p0, v0}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$3;-><init>(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 53
    nop

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;-><init>(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;Landroid/view/View;)V

    .line 59
    .local v1, "vh":Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;
    return-object v1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;>;"
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->values:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->notifyDataSetChanged()V

    .line 149
    return-void
.end method

.method public setOnItemClickListener(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "mItemClickListener"    # Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemClickListener"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$OnItemClickListener;

    .line 194
    return-void
.end method
