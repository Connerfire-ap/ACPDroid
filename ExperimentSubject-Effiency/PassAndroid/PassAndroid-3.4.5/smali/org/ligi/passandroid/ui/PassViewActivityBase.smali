.class public Lorg/ligi/passandroid/ui/PassViewActivityBase;
.super Lorg/ligi/passandroid/ui/PassAndroidActivity;
.source "PassViewActivityBase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;,
        Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;,
        Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;,
        Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\t\u0008\u0017\u0018\u0000 %2\u00020\u0001:\u0004%&\'(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0004J\u0008\u0010\r\u001a\u00020\u000cH\u0007J\u0012\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u000cH\u0014J\u0010\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J+\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020 H\u0016\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020\u000cH\u0014J\u0008\u0010#\u001a\u00020\u000cH\u0014J\u0008\u0010$\u001a\u00020\u000cH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassViewActivityBase;",
        "Lorg/ligi/passandroid/ui/PassAndroidActivity;",
        "()V",
        "currentPass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "getCurrentPass",
        "()Lorg/ligi/passandroid/model/pass/Pass;",
        "setCurrentPass",
        "(Lorg/ligi/passandroid/model/pass/Pass;)V",
        "fullBrightnessSet",
        "",
        "configureActionBar",
        "",
        "createShortcut",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onPause",
        "onPrepareOptionsMenu",
        "onRequestPermissionsResult",
        "requestCode",
        "",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "refresh",
        "setToFullBrightness",
        "Companion",
        "MyUnzipFailCallback",
        "MyUnzipSuccessCallback",
        "UpdateAsync",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation

.annotation build Lpermissions/dispatcher/RuntimePermissions;
.end annotation


# static fields
.field public static final Companion:Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;

# The value of this static final field might be set in the static constructor
.field private static final EXTRA_KEY_UUID:Ljava/lang/String; = "uuid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public currentPass:Lorg/ligi/passandroid/model/pass/Pass;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fullBrightnessSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->Companion:Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;

    .line 258
    const-string v0, "uuid"

    sput-object v0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->EXTRA_KEY_UUID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassAndroidActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEXTRA_KEY_UUID$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 32
    sget-object v0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->EXTRA_KEY_UUID:Ljava/lang/String;

    return-object v0
.end method

.method private final setToFullBrightness()V
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 249
    .local v1, "win":Landroid/view/Window;
    const-string v2, "win"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 250
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 251
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 252
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->fullBrightnessSet:Z

    .line 253
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->supportInvalidateOptionsMenu()V

    .line 254
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final configureActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 96
    :cond_1
    return-void
.end method

.method public final createShortcut()V
    .locals 9
    .annotation build Lpermissions/dispatcher/NeedsPermission;
        value = {
            "com.android.launcher.permission.INSTALL_SHORTCUT"
        }
    .end annotation

    .prologue
    const/16 v8, 0x80

    .line 151
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v4, "shortcutIntent":Landroid/content/Intent;
    sget-object v5, Lorg/ligi/passandroid/ui/PassViewActivityBase;->Companion:Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;

    invoke-virtual {v5}, Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;->getEXTRA_KEY_UUID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->currentPass:Lorg/ligi/passandroid/model/pass/Pass;

    if-nez v6, :cond_0

    const-string v7, "currentPass"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v6}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "org.ligi.passandroid"

    const-string v6, "org.ligi.passandroid.ui.PassViewActivity"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 156
    const-string v5, "android.intent.extra.shortcut.INTENT"

    check-cast v4, Landroid/os/Parcelable;

    .end local v4    # "shortcutIntent":Landroid/content/Intent;
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 157
    const-string v5, "android.intent.extra.shortcut.NAME"

    iget-object v6, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->currentPass:Lorg/ligi/passandroid/model/pass/Pass;

    if-nez v6, :cond_1

    const-string v7, "currentPass"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v6}, Lorg/ligi/passandroid/model/pass/Pass;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v5, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->currentPass:Lorg/ligi/passandroid/model/pass/Pass;

    if-nez v5, :cond_2

    const-string v6, "currentPass"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v6

    const-string v7, "icon"

    invoke-interface {v5, v6, v7}, Lorg/ligi/passandroid/model/pass/Pass;->getBitmap(Lorg/ligi/passandroid/model/PassStore;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 161
    .local v3, "passBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 162
    const/4 v5, 0x1

    invoke-static {v3, v8, v8, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, "bitmapToUse":Landroid/graphics/Bitmap;
    :goto_0
    const-string v5, "android.intent.extra.shortcut.ICON"

    check-cast v0, Landroid/os/Parcelable;

    .end local v0    # "bitmapToUse":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v2}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void

    .line 164
    :cond_3
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02007a

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->currentPass:Lorg/ligi/passandroid/model/pass/Pass;

    if-nez v0, :cond_0

    const-string v1, "currentPass"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/ligi/passandroid/ui/PassAndroidActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    nop

    .line 46
    :try_start_0
    check-cast p0, Landroid/content/Context;

    .end local p0    # "this":Lorg/ligi/passandroid/ui/PassViewActivityBase;
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 47
    .local v0, "config":Landroid/view/ViewConfiguration;
    const-class v2, Landroid/view/ViewConfiguration;

    const-string v3, "sHasPermanentMenuKey"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 48
    .local v1, "menuKeyField":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v1    # "menuKeyField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v2, Lorg/ligi/passandroid/ui/PassMenuOptions;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->currentPass:Lorg/ligi/passandroid/model/pass/Pass;

    if-nez v3, :cond_0

    const-string v4, "currentPass"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v2, v0, v3}, Lorg/ligi/passandroid/ui/PassMenuOptions;-><init>(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;)V

    invoke-virtual {v2, p1}, Lorg/ligi/passandroid/ui/PassMenuOptions;->process(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 139
    invoke-super {p0, p1}, Lorg/ligi/passandroid/ui/PassAndroidActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 118
    goto :goto_0

    .line 120
    :sswitch_0
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->finish()V

    move v0, v1

    .line 121
    goto :goto_1

    .line 125
    :sswitch_1
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->setToFullBrightness()V

    move v0, v1

    .line 126
    goto :goto_1

    .line 130
    :sswitch_2
    invoke-static {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBasePermissionsDispatcher;->createShortcutWithCheck(Lorg/ligi/passandroid/ui/PassViewActivityBase;)V

    move v0, v1

    .line 131
    goto :goto_1

    .line 135
    :sswitch_3
    new-instance v2, Ljava/lang/Thread;

    new-instance v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;-><init>(Lorg/ligi/passandroid/ui/PassViewActivityBase;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    move v0, v1

    .line 136
    goto :goto_1

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e00f0 -> :sswitch_1
        0x7f0e00fa -> :sswitch_2
        0x7f0e00fb -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lorg/ligi/passandroid/ui/PassAndroidActivity;->onPause()V

    .line 60
    sget-object v0, Lorg/ligi/passandroid/model/State;->INSTANCE:Lorg/ligi/passandroid/model/State;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->currentPass:Lorg/ligi/passandroid/model/pass/Pass;

    if-nez v1, :cond_0

    const-string v2, "currentPass"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/model/State;->setLastSelectedPassUUID(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "menu"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1}, Lorg/ligi/passandroid/ui/PassAndroidActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 108
    .local v0, "res":Z
    const v1, 0x7f0e00f0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const-string v1, "menu.findItem(R.id.menu_light)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->fullBrightnessSet:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 109
    const v1, 0x7f0e00f2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v4, "menu.findItem(R.id.menu_print)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    return v0

    :cond_0
    move v1, v3

    .line 108
    goto :goto_0

    :cond_1
    move v2, v3

    .line 109
    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1, p2, p3}, Lorg/ligi/passandroid/ui/PassAndroidActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 146
    invoke-static {p0, p1, p3}, Lorg/ligi/passandroid/ui/PassViewActivityBasePermissionsDispatcher;->onRequestPermissionsResult(Lorg/ligi/passandroid/ui/PassViewActivityBase;I[I)V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 64
    invoke-super {p0}, Lorg/ligi/passandroid/ui/PassAndroidActivity;->onResume()V

    .line 66
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lorg/ligi/passandroid/ui/PassViewActivityBase;->Companion:Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;

    invoke-virtual {v3}, Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;->getEXTRA_KEY_UUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "uuid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/ligi/passandroid/model/PassStore;->getPassbookForId(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v0

    .line 70
    .local v0, "passbookForId":Lorg/ligi/passandroid/model/pass/Pass;
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/ligi/passandroid/model/PassStore;->setCurrentPass(Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 73
    .end local v0    # "passbookForId":Lorg/ligi/passandroid/model/pass/Pass;
    :cond_0
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v2

    if-nez v2, :cond_1

    .line 74
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    sget-object v3, Lorg/ligi/passandroid/model/State;->INSTANCE:Lorg/ligi/passandroid/model/State;

    invoke-virtual {v3}, Lorg/ligi/passandroid/model/State;->getLastSelectedPassUUID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/ligi/passandroid/model/PassStore;->getPassbookForId(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v0

    .line 75
    .restart local v0    # "passbookForId":Lorg/ligi/passandroid/model/pass/Pass;
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/ligi/passandroid/model/PassStore;->setCurrentPass(Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 78
    .end local v0    # "passbookForId":Lorg/ligi/passandroid/model/pass/Pass;
    :cond_1
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v2

    if-nez v2, :cond_3

    .line 79
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pass not present in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->finish()V

    .line 91
    :cond_2
    :goto_0
    return-void

    .line 84
    :cond_3
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iput-object v2, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->currentPass:Lorg/ligi/passandroid/model/pass/Pass;

    .line 86
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->configureActionBar()V

    .line 88
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getSettings()Lorg/ligi/passandroid/model/Settings;

    move-result-object v2

    invoke-interface {v2}, Lorg/ligi/passandroid/model/Settings;->isAutomaticLightEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->setToFullBrightness()V

    goto :goto_0
.end method

.method protected refresh()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final setCurrentPass(Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase;->currentPass:Lorg/ligi/passandroid/model/pass/Pass;

    return-void
.end method
