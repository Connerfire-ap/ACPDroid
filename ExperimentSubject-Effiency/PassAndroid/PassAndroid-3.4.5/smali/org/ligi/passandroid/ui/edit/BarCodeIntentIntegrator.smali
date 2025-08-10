.class public Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;
.super Ljava/lang/Object;
.source "BarCodeIntentIntegrator.java"


# static fields
.field public static final ALL_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BSPLUS_PACKAGE:Ljava/lang/String; = "com.srowen.bs.android"

.field private static final BS_PACKAGE:Ljava/lang/String; = "com.google.zxing.client.android"

.field public static final DATA_MATRIX_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "This application requires Barcode Scanner. Would you like to install it?"

.field public static final DEFAULT_NO:Ljava/lang/String; = "No"

.field public static final DEFAULT_TITLE:Ljava/lang/String; = "Install Barcode Scanner?"

.field public static final DEFAULT_YES:Ljava/lang/String; = "Yes"

.field public static final ONE_D_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCT_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final QR_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_CODE:I = 0xc0de

.field private static final TAG:Ljava/lang/String;

.field public static final TARGET_ALL_KNOWN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_BARCODE_SCANNER_ONLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;

.field private buttonNo:Ljava/lang/String;

.field private buttonYes:Ljava/lang/String;

.field private final fragment:Landroid/support/v4/app/Fragment;

.field private message:Ljava/lang/String;

.field private final moreExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private targetApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    const-class v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->TAG:Ljava/lang/String;

    .line 108
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UPC_A"

    aput-object v1, v0, v3

    const-string v1, "UPC_E"

    aput-object v1, v0, v4

    const-string v1, "EAN_8"

    aput-object v1, v0, v5

    const-string v1, "EAN_13"

    aput-object v1, v0, v6

    const-string v1, "RSS_14"

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->PRODUCT_CODE_TYPES:Ljava/util/Collection;

    .line 109
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UPC_A"

    aput-object v1, v0, v3

    const-string v1, "UPC_E"

    aput-object v1, v0, v4

    const-string v1, "EAN_8"

    aput-object v1, v0, v5

    const-string v1, "EAN_13"

    aput-object v1, v0, v6

    const-string v1, "CODE_39"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "CODE_93"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CODE_128"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ITF"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RSS_14"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "RSS_EXPANDED"

    aput-object v2, v0, v1

    .line 110
    invoke-static {v0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->ONE_D_CODE_TYPES:Ljava/util/Collection;

    .line 112
    const-string v0, "QR_CODE"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->QR_CODE_TYPES:Ljava/util/Collection;

    .line 113
    const-string v0, "DATA_MATRIX"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->DATA_MATRIX_TYPES:Ljava/util/Collection;

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->ALL_CODE_TYPES:Ljava/util/Collection;

    .line 117
    const-string v0, "com.google.zxing.client.android"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->TARGET_BARCODE_SCANNER_ONLY:Ljava/util/List;

    .line 118
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.srowen.bs.android"

    aput-object v1, v0, v3

    const-string v1, "com.srowen.bs.android.simple"

    aput-object v1, v0, v4

    const-string v1, "com.google.zxing.client.android"

    aput-object v1, v0, v5

    invoke-static {v0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->TARGET_ALL_KNOWN:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->moreExtras:Ljava/util/Map;

    .line 139
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->fragment:Landroid/support/v4/app/Fragment;

    .line 141
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->initializeConfiguration()V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->moreExtras:Ljava/util/Map;

    .line 145
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;

    .line 146
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->fragment:Landroid/support/v4/app/Fragment;

    .line 147
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->initializeConfiguration()V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->targetApplications:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$200(Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private attachMoreExtras(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 430
    iget-object v3, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->moreExtras:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 431
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 432
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 434
    .local v2, "value":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 435
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 436
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 437
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 438
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 439
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 440
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, Ljava/lang/Double;

    if-eqz v4, :cond_3

    .line 441
    check-cast v2, Ljava/lang/Double;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 442
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v4, v2, Ljava/lang/Float;

    if-eqz v4, :cond_4

    .line 443
    check-cast v2, Ljava/lang/Float;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 444
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 445
    check-cast v2, Landroid/os/Bundle;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 447
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 450
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_6
    return-void
.end method

.method private static contains(Ljava/lang/Iterable;Ljava/lang/String;)Z
    .locals 4
    .param p1, "targetApp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "availableApps":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 339
    .local v0, "availableApp":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 340
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    const/4 v2, 0x1

    .line 344
    .end local v0    # "availableApp":Landroid/content/pm/ResolveInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findTargetAppPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 325
    iget-object v3, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 326
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v3, 0x10000

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 327
    .local v0, "availableApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    .line 328
    iget-object v3, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->targetApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 329
    .local v2, "targetApp":Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->contains(Ljava/lang/Iterable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    .end local v2    # "targetApp":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initializeConfiguration()V
    .locals 1

    .prologue
    .line 151
    const-string v0, "Install Barcode Scanner?"

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->title:Ljava/lang/String;

    .line 152
    const-string v0, "This application requires Barcode Scanner. Would you like to install it?"

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->message:Ljava/lang/String;

    .line 153
    const-string v0, "Yes"

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->buttonYes:Ljava/lang/String;

    .line 154
    const-string v0, "No"

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->buttonNo:Ljava/lang/String;

    .line 155
    sget-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->TARGET_ALL_KNOWN:Ljava/util/List;

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->targetApplications:Ljava/util/List;

    .line 156
    return-void
.end method

.method private static varargs list([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private showDownloadDialog()Landroid/support/v7/app/AlertDialog;
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    .local v0, "downloadDialog":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 350
    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 351
    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->buttonYes:Ljava/lang/String;

    new-instance v2, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator$1;

    invoke-direct {v2, p0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator$1;-><init>(Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 376
    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->buttonNo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 377
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 378
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 226
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->moreExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public getButtonNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->buttonNo:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonYes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->buttonYes:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->moreExtras:Ljava/util/Map;

    return-object v0
.end method

.method public getTargetApplications()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->targetApplications:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final initiateScan()Landroid/support/v7/app/AlertDialog;
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->ALL_CODE_TYPES:Ljava/util/Collection;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->initiateScan(Ljava/util/Collection;I)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final initiateScan(I)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 247
    sget-object v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->ALL_CODE_TYPES:Ljava/util/Collection;

    invoke-virtual {p0, v0, p1}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->initiateScan(Ljava/util/Collection;I)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final initiateScan(Ljava/util/Collection;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/support/v7/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "desiredBarcodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->initiateScan(Ljava/util/Collection;I)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final initiateScan(Ljava/util/Collection;I)Landroid/support/v7/app/AlertDialog;
    .locals 6
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/support/v7/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "desiredBarcodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.zxing.client.android.SCAN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v1, "intentScan":Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    if-eqz p1, :cond_2

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v2, "joinedByComma":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 283
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 287
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    const-string v4, "SCAN_FORMATS"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    .end local v2    # "joinedByComma":Ljava/lang/StringBuilder;
    :cond_2
    if-ltz p2, :cond_3

    .line 292
    const-string v4, "SCAN_CAMERA_ID"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    :cond_3
    invoke-direct {p0, v1}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->findTargetAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "targetAppPackage":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 297
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->showDownloadDialog()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 304
    :goto_1
    return-object v4

    .line 299
    :cond_4
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    const/high16 v4, 0x80000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    invoke-direct {p0, v1}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->attachMoreExtras(Landroid/content/Intent;)V

    .line 303
    const v4, 0xc0de

    invoke-virtual {p0, v1, v4}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->startActivityForResult(Landroid/content/Intent;I)V

    .line 304
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setButtonNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonNo"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->buttonNo:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setButtonNoByID(I)V
    .locals 1
    .param p1, "buttonNoID"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->buttonNo:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setButtonYes(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonYes"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->buttonYes:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setButtonYesByID(I)V
    .locals 1
    .param p1, "buttonYesID"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->buttonYes:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->message:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setMessageByID(I)V
    .locals 1
    .param p1, "messageID"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->message:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setSingleTargetApplication(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetApplication"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->targetApplications:Ljava/util/List;

    .line 219
    return-void
.end method

.method public final setTargetApplications(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "targetApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No target applications"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->targetApplications:Ljava/util/List;

    .line 215
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->title:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setTitleByID(I)V
    .locals 1
    .param p1, "titleID"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->title:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public final shareText(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 391
    const-string v0, "TEXT_TYPE"

    invoke-virtual {p0, p1, v0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->shareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final shareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/CharSequence;

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v2, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v2, "ENCODE_TYPE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 408
    const-string v2, "ENCODE_DATA"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 409
    invoke-direct {p0, v0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->findTargetAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "targetAppPackage":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 411
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->showDownloadDialog()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 422
    :goto_0
    return-object v2

    .line 413
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    invoke-direct {p0, v0}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->attachMoreExtras(Landroid/content/Intent;)V

    .line 417
    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_1

    .line 418
    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 422
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 420
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "code"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
