
@isTest
private class DemoControllerTests {
    @isTest static void testConstructor() {
    	Contact contact = new Contact(LastName='Smith');
    	insert contact;

    	Test.setCurrentPage(Page.DemoPage);
    	ApexPages.currentPage().getParameters().put('lastName', 'Smith');
        system.debug('aaaaaaaaaaaaaaaaaaaa');

    	DemoController demo = new DemoController(new ApexPages.StandardController(contact));
        system.debug('bbbbbbbbbbbbbbbbbbbbbb');
    	System.assertEquals(contact.Id, ApexPages.currentPage().getParameters().get('id'));
    }

    @isTest static void testGetAppVersion() {
        DemoController demo = new DemoController();
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
}
