.class public Lorg/openobservatory/measurement_kit/android/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field private static final CA_BUNDLE:Ljava/lang/String; = "cacert.pem"

.field private static final GEOIP:Ljava/lang/String; = "geoip.dat"

.field private static final GEOIP_ASNUM:Ljava/lang/String; = "geoipasnum.dat"

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy_ca_bundle(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I

    .line 24
    const-string v0, "cacert.pem"

    invoke-static {p0, p1, v0}, Lorg/openobservatory/measurement_kit/android/ResourceUtils;->copy_resource(Landroid/app/Activity;ILjava/lang/String;)V

    .line 25
    return-void
.end method

.method public static copy_geoip(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I

    .line 28
    const-string v0, "geoip.dat"

    invoke-static {p0, p1, v0}, Lorg/openobservatory/measurement_kit/android/ResourceUtils;->copy_resource(Landroid/app/Activity;ILjava/lang/String;)V

    .line 29
    return-void
.end method

.method public static copy_geoip_asnum(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I

    .line 32
    const-string v0, "geoipasnum.dat"

    invoke-static {p0, p1, v0}, Lorg/openobservatory/measurement_kit/android/ResourceUtils;->copy_resource(Landroid/app/Activity;ILjava/lang/String;)V

    .line 33
    return-void
.end method

.method public static copy_resource(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I
    .param p2, "filename"    # Ljava/lang/String;

    .line 38
    const-string v0, "ResourceUtils"

    const-string v1, "copy_resource..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p2, v2}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 41
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    :try_start_2
    new-array v4, v4, [B

    .line 43
    .local v4, "buff":[B
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "count":I
    if-lez v5, :cond_0

    .line 44
    invoke-virtual {v3, v4, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 46
    .end local v4    # "buff":[B
    .end local v6    # "count":I
    :cond_0
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 49
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :cond_1
    goto :goto_2

    .line 40
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local p0    # "activity":Landroid/app/Activity;
    .end local p1    # "id":I
    .end local p2    # "filename":Ljava/lang/String;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "id":I
    .restart local p2    # "filename":Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    goto :goto_1

    :cond_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "activity":Landroid/app/Activity;
    .end local p1    # "id":I
    .end local p2    # "filename":Ljava/lang/String;
    :cond_3
    :goto_1
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 39
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "id":I
    .restart local p2    # "filename":Ljava/lang/String;
    :catchall_3
    move-exception v2

    goto :goto_3

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "err":Ljava/lang/Exception;
    :try_start_7
    const-string v3, "error opening output file"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 50
    .end local v2    # "err":Ljava/lang/Exception;
    :goto_2
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 53
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_4
    goto :goto_5

    .line 39
    .end local p0    # "activity":Landroid/app/Activity;
    .end local p1    # "id":I
    .end local p2    # "filename":Ljava/lang/String;
    :goto_3
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 50
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "id":I
    .restart local p2    # "filename":Ljava/lang/String;
    :catchall_4
    move-exception v3

    if-eqz v1, :cond_6

    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v2

    goto :goto_4

    :cond_5
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .end local p0    # "activity":Landroid/app/Activity;
    .end local p1    # "id":I
    .end local p2    # "filename":Ljava/lang/String;
    :cond_6
    :goto_4
    throw v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "id":I
    .restart local p2    # "filename":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 51
    .local v1, "err":Ljava/lang/Exception;
    const-string v2, "error getting resource"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v1    # "err":Ljava/lang/Exception;
    :goto_5
    const-string v1, "copy_resource... done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public static get_ca_bundle_path(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 62
    const-string v0, "cacert.pem"

    invoke-static {p0, v0}, Lorg/openobservatory/measurement_kit/android/ResourceUtils;->get_path(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_geoip_asnum_path(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 70
    const-string v0, "geoipasnum.dat"

    invoke-static {p0, v0}, Lorg/openobservatory/measurement_kit/android/ResourceUtils;->get_path(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_geoip_path(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 66
    const-string v0, "geoip.dat"

    invoke-static {p0, v0}, Lorg/openobservatory/measurement_kit/android/ResourceUtils;->get_path(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_path(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "string"    # Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
