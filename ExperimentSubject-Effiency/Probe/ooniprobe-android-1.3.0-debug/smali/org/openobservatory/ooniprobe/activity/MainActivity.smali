.class public Lorg/openobservatory/ooniprobe/activity/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openobservatory/ooniprobe/activity/MainActivity$DrawerItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "main-activity"


# instance fields
.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerList:Landroid/widget/ListView;

.field private mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private mMenuItemsTitles:[Ljava/lang/String;

.field private mTitle:Ljava/lang/CharSequence;

.field private mleftMenuListAdapter:Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/openobservatory/ooniprobe/activity/MainActivity;)Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/activity/MainActivity;

    .line 60
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mleftMenuListAdapter:Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;

    return-object v0
.end method

.method private copyResources(ILjava/lang/String;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "filename"
        }
    .end annotation

    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "exists":Z
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    const/4 v0, 0x1

    .line 308
    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 309
    :goto_0
    if-eqz v0, :cond_0

    .line 310
    return-void

    .line 312
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyResources: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "main-activity"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :try_start_1
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 315
    .local v1, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 316
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 318
    .local v6, "buff":[B
    :goto_1
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "read":I
    if-lez v7, :cond_1

    invoke-virtual {v5, v6, v4, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 323
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "buff":[B
    .end local v8    # "read":I
    :cond_1
    goto :goto_2

    .line 319
    :catch_1
    move-exception v1

    .line 322
    .local v1, "err":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyResources: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v1    # "err":Ljava/io/IOException;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ... done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
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

    .line 229
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method public checkInformedConsent()V
    .locals 3

    .line 233
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "first_run"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->startInformedConsentActivity()V

    .line 237
    :cond_0
    return-void
.end method

.method public checkResources()V
    .locals 2

    .line 295
    const v0, 0x7f0d0003

    const-string v1, "hosts.txt"

    invoke-direct {p0, v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->copyResources(ILjava/lang/String;)V

    .line 296
    const v0, 0x7f0d0001

    const-string v1, "GeoIPASNum.dat"

    invoke-direct {p0, v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->copyResources(ILjava/lang/String;)V

    .line 297
    const/high16 v0, 0x7f0d0000

    const-string v1, "GeoIP.dat"

    invoke-direct {p0, v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->copyResources(ILjava/lang/String;)V

    .line 298
    const v0, 0x7f0d0002

    const-string v1, "global.txt"

    invoke-direct {p0, v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->copyResources(ILjava/lang/String;)V

    .line 299
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 334
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 336
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 337
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->finish()V

    goto :goto_0

    .line 341
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "first_run"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 342
    const v1, 0x7f0e0069

    invoke-virtual {p0, v1, v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->showToast(IZ)V

    .line 345
    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 199
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->finish()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 207
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 223
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 225
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->checkResources()V

    .line 77
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mTitle:Ljava/lang/CharSequence;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0e0082

    invoke-virtual {p0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0e006e

    invoke-virtual {p0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0x7f0e0088

    invoke-virtual {p0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const v1, 0x7f0e0021

    invoke-virtual {p0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mMenuItemsTitles:[Ljava/lang/String;

    .line 79
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 80
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerList:Landroid/widget/ListView;

    .line 82
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f070069

    const v4, 0x800003

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mMenuItemsTitles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v0, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;

    const v4, 0x7f0a004c

    invoke-direct {v1, p0, v4, v0}, Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mleftMenuListAdapter:Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;

    .line 86
    iget-object v4, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerList:Landroid/widget/ListView;

    new-instance v4, Lorg/openobservatory/ooniprobe/activity/MainActivity$DrawerItemClickListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/openobservatory/ooniprobe/activity/MainActivity$DrawerItemClickListener;-><init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;Lorg/openobservatory/ooniprobe/activity/MainActivity$1;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, "_imgView":Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 92
    const v4, 0x7f07009b

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v4, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 97
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->updateActionBar()V

    .line 104
    new-instance v4, Lorg/openobservatory/ooniprobe/activity/MainActivity$1;

    iget-object v8, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v9, 0x7f0e003a

    const v10, 0x7f0e0039

    move-object v5, v4

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Lorg/openobservatory/ooniprobe/activity/MainActivity$1;-><init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    iput-object v4, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 125
    iget-object v5, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 128
    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0, v2}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->selectItem(I)V

    .line 132
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 133
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "cleanup_unused_files"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->removeUnusedFiles(Landroid/content/Context;)V

    .line 135
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    :cond_1
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->checkInformedConsent()V

    .line 139
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 263
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 242
    :pswitch_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e002c

    .line 243
    invoke-virtual {p0, v2}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e0068

    .line 244
    invoke-virtual {p0, v2}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/openobservatory/ooniprobe/activity/MainActivity$3;

    invoke-direct {v3, p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity$3;-><init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e0029

    .line 254
    invoke-virtual {p0, v2}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/openobservatory/ooniprobe/activity/MainActivity$2;

    invoke-direct {v3, p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity$2;-><init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 261
    return v1

    .line 263
    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f08007a
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
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

    .line 217
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 218
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 219
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 144
    invoke-static {p0, p0}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/openobservatory/ooniprobe/data/TestData;->addObserver(Ljava/util/Observer;)V

    .line 145
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 7
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "backStateName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 180
    .local v1, "manager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v2

    .line 181
    .local v2, "fragmentPopped":Z
    const v3, 0x7f08003e

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 182
    .local v4, "currentFragment":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setAllViewed(Landroid/content/Context;)V

    .line 187
    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_1

    .line 189
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 190
    .local v5, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v5, v3, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 191
    const/16 v3, 0x1003

    invoke-virtual {v5, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 192
    invoke-virtual {v5, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 193
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 195
    .end local v5    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    return-void
.end method

.method public selectItem(I)V
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "f":Landroid/support/v4/app/Fragment;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    new-instance v1, Lorg/openobservatory/ooniprobe/fragment/AboutFragment;

    invoke-direct {v1}, Lorg/openobservatory/ooniprobe/fragment/AboutFragment;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 164
    :pswitch_1
    new-instance v1, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    invoke-direct {v1}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;-><init>()V

    move-object v0, v1

    .line 165
    goto :goto_0

    .line 161
    :pswitch_2
    new-instance v1, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;

    invoke-direct {v1}, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;-><init>()V

    move-object v0, v1

    .line 162
    goto :goto_0

    .line 158
    :pswitch_3
    new-instance v1, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;

    invoke-direct {v1}, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;-><init>()V

    move-object v0, v1

    .line 159
    nop

    .line 170
    :goto_0
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 172
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 173
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 175
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mTitle:Ljava/lang/CharSequence;

    .line 212
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method public showToast(IZ)V
    .locals 5
    .param p1, "string"    # I
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "success"
        }
    .end annotation

    .line 348
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 349
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    .line 350
    .local v1, "view":Landroid/view/View;
    if-eqz p2, :cond_0

    const v2, 0x7f0700a1

    goto :goto_0

    :cond_0
    const v2, 0x7f07006a

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 351
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 352
    .local v2, "text":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 353
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 355
    return-void
.end method

.method public startInformedConsentActivity()V
    .locals 2

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .local v0, "InformedConsentIntent":Landroid/content/Intent;
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 330
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8
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

    .line 269
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->updateActionBar()V

    .line 271
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "org.openobservatory.ooniprobe.fragment.RunTestsFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;

    .line 272
    .local v0, "runTestsFragment":Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/fragment/RunTestsFragment;->updateList()V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "org.openobservatory.ooniprobe.fragment.PastTestsFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;

    .line 276
    .local v1, "pastTestsFragment":Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    invoke-virtual {v1}, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->updateList()V

    .line 279
    :cond_1
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "org.openobservatory.ooniprobe.fragment.TestInfoFragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;

    .line 280
    .local v2, "testInfoFragment":Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    invoke-virtual {v2}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->updateButtons()V

    .line 283
    :cond_2
    if-eqz p2, :cond_3

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0e0091

    invoke-virtual {p0, v4}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "string":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 286
    .local v4, "toast":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    .line 287
    .local v5, "view":Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 288
    .local v6, "text":Landroid/widget/TextView;
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 289
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 291
    .end local v3    # "string":Ljava/lang/String;
    .end local v4    # "toast":Landroid/widget/Toast;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "text":Landroid/widget/TextView;
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public updateActionBar()V
    .locals 4

    .line 358
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->newTests(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :goto_0
    return-void
.end method
